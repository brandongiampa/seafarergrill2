-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2019 at 08:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seafarer_grill`
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
(11, 'Wine', 11, '0'),
(12, 'Cocktails', 12, '0'),
(13, 'Beverages', 13, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `location` varchar(40) NOT NULL,
  `mon_open` varchar(5) NOT NULL,
  `mon_close` varchar(5) NOT NULL,
  `tues_open` varchar(5) NOT NULL,
  `tues_close` varchar(5) NOT NULL,
  `wed_open` varchar(5) NOT NULL,
  `wed_close` varchar(5) NOT NULL,
  `thurs_open` varchar(5) NOT NULL,
  `thurs_close` varchar(5) NOT NULL,
  `fri_open` varchar(5) NOT NULL,
  `fri_close` varchar(5) NOT NULL,
  `sat_open` varchar(5) NOT NULL,
  `sat_close` varchar(5) NOT NULL,
  `sun_open` varchar(5) NOT NULL,
  `sun_close` varchar(5) NOT NULL,
  `time_zone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`location`, `mon_open`, `mon_close`, `tues_open`, `tues_close`, `wed_open`, `wed_close`, `thurs_open`, `thurs_close`, `fri_open`, `fri_close`, `sat_open`, `sat_close`, `sun_open`, `sun_close`, `time_zone`) VALUES
('Hamburg', '13:00', '23:00', '13:00', '23:00', '13:00', '23:00', '13:00', '00:00', '13:00', '02:00', '12:00', '02:00', '13:00', '22:00', 2),
('NYC', '12:00', '22:00', '12:00', '22:00', '12:00', '22:00', '12:00', '23:00', '12:00', '02:00', '13:00', '02:00', '13:00', '20:00', -4),
('Rotterdam', '11:00', '21:00', '11:00', '21:00', '11:00', '21:00', '11:00', '22:00', '11:00', '00:00', '11:00', '00:00', '11:00', '20:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `index` int(11) NOT NULL,
  `location` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(40) NOT NULL,
  `state_province` varchar(40) DEFAULT NULL,
  `zip_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`index`, `location`, `phone_number`, `address1`, `address2`, `city`, `country`, `state_province`, `zip_code`) VALUES
(1, 'NYC', '(718) 264-3943', '615A N Wandering Rd', '2nd Floor', 'New York', 'USA', 'New York', '10033'),
(2, 'Hamburg', '(562) 463-1009', '534 Sundgauallee', 'Unit 2A', 'Hamburg', 'Germany', NULL, '20095'),
(3, 'Rotterdam', '(010) 993-4242', '15 Brezelplatz', '', 'Rotterdam', 'Netherlands', NULL, '1079 CK');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `food_type_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price_dollar` decimal(10,2) NOT NULL,
  `price_euro` decimal(10,2) NOT NULL,
  `pic` varchar(40) NOT NULL,
  `list_order` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `food_type_id`, `name`, `price_dollar`, `price_euro`, `pic`, `list_order`, `description`, `created`) VALUES
(7, 1, 'Fish Styx (Grilled)', '17.99', '15.00', 'grillfish', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-10 23:52:57'),
(8, 1, 'Striped Italian Style ', '23.99', '21.50', 'grillfish2', 2, 'Ut lectus arcu bibendum at varius. In hendrerit gravida rutrum quisque non. Quam pellentesque nec nam aliquam sem et tortor consequat id. Donec ac odio tempor orci dapibus. Lectus magna fringilla urna porttitor. Malesuada fames ac turpis egestas sed tempus urna et. Maecenas sed enim ut sem viverra aliquet eget. Semper risus in hendrerit gravida rutrum quisque non tellus orci. At in tellus integer feugiat. Morbi tristique senectus et netus et. Sed tempus urna et pharetra pharetra massa. Purus faucibus ornare suspendisse sed nisi lacus. Id eu nisl nunc mi ipsum faucibus vitae aliquet nec.', '2019-08-10 23:53:04'),
(9, 2, 'Captain\'s Landfarer Special', '19.99', '17.50', 'grillchicken', 1, 'Sit amet mattis vulputate enim. Dictum at tempor commodo ullamcorper. Habitasse platea dictumst quisque sagittis. Platea dictumst quisque sagittis purus sit. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus vel. Arcu non odio euismod lacinia at quis risus. \r\nLectus quam id leo in. Vitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Enim nec dui nunc mattis enim ut. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.', '2019-08-10 23:53:11'),
(10, 1, 'Crabby First Mate', '29.99', '26.50', 'crab2', 3, 'Marinated over the course of three weeks, it amet mattis vulputate enim. Dictum at tempor commodo ullamcorper. Habitasse platea dictumst quisque sagittis. Platea dictumst quisque sagittis purus sit. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus vel. Arcu non odio euismod lacinia at quis risus. Lectus quam id leo in. Vitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Enim nec dui nunc mattis enim ut. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.', '2019-08-10 00:00:00'),
(11, 1, 'Crustacean Pasta ', '23.99', '19.00', 'crustaceanpasta', 4, 'Nam aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet. Adipiscing bibendum est ultricies integer. Ut ornare lectus sit amet.\r\nMattis enim ut tellus elementum sagittis vitae et leo duis. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Vitae auctor eu augue ut.', '2019-08-10 23:59:03'),
(12, 1, 'Ahab, King of Crabs', '33.99', '31.50', 'crab', 5, 'Lectus quam id leo in. Vitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Enim nec dui nunc mattis enim ut. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.\r\nNam aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.', '2019-08-10 23:59:03'),
(13, 1, 'Eel-ectric', '25.99', '23.00', 'eel', 6, 'Vitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Enim nec dui nunc mattis enim ut. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.\r\nNisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.', '2019-08-10 23:59:03'),
(14, 5, 'Ruby\'s Reuben', '13.49', '12.00', 'sandwich1', 1, 'Lectus quam id leo in. Vitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.\r\nNam aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.', '2019-08-11 00:07:26'),
(15, 5, 'Submarine, Anybody?', '15.99', '14.00', 'sandwich2', 2, 'Nam aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.\r\nVitae auctor eu augue ut lectus arcu bibendum at. Quis commodo odio aenean sed. Enim nec dui nunc mattis enim ut. Ut sem nulla pharetra diam sit amet nisl suscipit. Mattis aliquam faucibus purus in massa tempor.', '2019-08-11 00:07:26'),
(16, 5, 'Millenial Special ', '14.99', '13.00', 'sandwich3', 3, 'Avocado toast on aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.\r\nNam aliquam sem et tortor consequat. Nisi porta lorem mollis aliquam ut porttitor leo. In cursus turpis massa tincidunt dui ut ornare lectus. Cursus risus at ultrices mi tempus imperdiet.', '2019-08-11 00:07:26'),
(17, 5, 'Branson\'s BLT', '15.99', '15.00', 'sandwich4', 4, 'Id diam maecenas ultricies mi eget mauris pharetra. Quam elementum pulvinar etiam non quam. Iaculis nunc sed augue lacus viverra vitae. Auctor elit sed vulputate mi sit amet mauris. Sapien nec sagittis aliquam malesuada. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique.\r\nTellus molestie nunc non blandit massa enim nec. Adipiscing at in tellus integer feugiat scelerisque varius morbi enim. Purus sit amet volutpat consequat. Varius vel pharetra vel turpis nunc eget lorem. Consequat id porta nibh venenatis cras.', '2019-08-11 00:07:26'),
(18, 5, 'Dirty Landfarer\'s Grubby', '13.99', '13.00', 'sandwich5', 5, 'Quam elementum pulvinar etiam non quam. Iaculis nunc sed augue lacus viverra vitae. Auctor elit sed vulputate mi sit amet mauris. Sapien nec sagittis aliquam malesuada. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Tellus molestie nunc non blandit massa enim nec. Adipiscing at in tellus integer feugiat scelerisque varius morbi enim. Purus sit amet volutpat consequat.\r\nSemper risus in hendrerit gravida rutrum. Egestas diam in arcu cursus euismod. Neque laoreet suspendisse interdum consectetur libero id. ', '2019-08-11 00:07:26'),
(19, 5, 'Mexican Landfish Burrito', '16.49', '14.50', 'burrito', 6, 'Aliquet enim tortor at auctor urna nunc id. Blandit aliquam etiam erat velit scelerisque. Cursus euismod quis viverra nibh cras. Lorem donec massa sapien faucibus et molestie ac. Et tortor at risus viverra. Id donec ultrices tincidunt arcu non sodales neque. Purus sit amet luctus venenatis lectus. Turpis egestas integer eget aliquet nibh praesent. At lectus urna duis convallis convallis tellus id. Interdum varius sit amet mattis. \r\nHendrerit dolor magna eget est lorem ipsum dolor sit amet. Est lorem ipsum dolor sit amet consectetur. Sed odio morbi quis commodo odio aenean sed adipiscing. Convallis posuere morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.\r\nSemper risus in hendrerit gravida rutrum. Egestas diam in arcu cursus euismod. Neque laoreet suspendisse interdum consectetur libero id. ', '2019-08-11 00:09:16'),
(20, 2, 'Ishmael\'s Return to Land Chicken', '17.99', '16.00', 'bbqchicken', 1, 'Aliquet enim tortor at auctor urna nunc id. Blandit aliquam etiam erat velit scelerisque. Cursus euismod quis viverra nibh cras. Lorem donec massa sapien faucibus et molestie ac. Et tortor at risus viverra. Id donec ultrices tincidunt arcu non sodales neque. \r\nPurus sit amet luctus venenatis lectus. Turpis egestas integer eget aliquet nibh praesent. At lectus urna duis convallis convallis tellus id. \r\nInterdum varius sit amet mattis. Hendrerit dolor magna eget est lorem ipsum dolor sit amet. Est lorem ipsum dolor sit amet consectetur. Sed odio morbi quis commodo odio aenean sed adipiscing. \r\nConvallis posuere morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.', '2019-08-11 00:16:15'),
(21, 2, 'Captain Hamburg\'s Love of Beef', '17.99', '15.50', 'bbqbeef', 4, 'Blandit aliquam etiam erat velit scelerisque. Cursus euismod quis viverra nibh cras. Lorem donec massa sapien faucibus et molestie ac. Et tortor at risus viverra. Id donec ultrices tincidunt arcu non sodales neque. Purus sit amet luctus venenatis lectus. Turpis egestas integer eget aliquet nibh praesent. At lectus urna duis convallis convallis tellus id. Interdum varius sit amet mattis. Hendrerit dolor magna eget est lorem ipsum dolor sit amet. \r\nEst lorem ipsum dolor sit amet consectetur. Sed odio morbi quis commodo odio aenean sed adipiscing. Convallis posuere morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.', '2019-08-11 00:16:15'),
(22, 2, 'Best of the Wurst', '16.99', '15.50', 'bbqsausage', 5, 'Aliquet eget sit amet tellus cras. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Ac odio tempor orci dapibus. Arcu bibendum at varius vel pharetra vel turpis nunc. Nibh cras pulvinar mattis nunc sed blandit libero. Laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Velit egestas dui id ornare arcu. \r\nA iaculis at erat pellentesque adipiscing commodo elit. Tortor pretium viverra suspendisse potenti. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Eu ultrices vitae auctor eu augue. Aliquet enim tortor at auctor. Penatibus et magnis dis parturient montes nascetur ridiculus mus. ', '2019-08-11 00:18:55'),
(23, 2, 'The Rotterham', '15.99', '13.50', 'bbqham', 6, 'Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Ac odio tempor orci dapibus. Arcu bibendum at varius vel pharetra vel turpis nunc. \r\nNibh cras pulvinar mattis nunc sed blandit libero. Laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Velit egestas dui id ornare arcu. A iaculis at erat pellentesque adipiscing commodo elit. Tortor pretium viverra suspendisse potenti. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Eu ultrices vitae auctor eu augue. \r\nAliquet enim tortor at auctor. Penatibus et magnis dis parturient montes nascetur ridiculus mus. ', '2019-08-11 00:18:55'),
(24, 2, 'The Beefy Londoner', '17.99', '15.50', 'bbqbeef2', 7, 'Pharetra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. \r\nDuis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. \r\nIaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:21:39'),
(25, 1, 'The Crusty Station', '21.99', '20.00', 'breadedshrimp', 7, 'Pharetra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. \r\nDuis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. Iaculis urna id volutpat lacus. \r\nEgestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:21:39'),
(26, 2, 'Cliff Rock Grilled Steak ', '32.99', '30.50', 'bbqsteak', 8, 'Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. \r\nUrna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. \r\nEget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:25:56'),
(27, 3, 'Docked in Sauce', '14.99', '13.00', 'pasta1', 1, 'Suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie.\r\nAmet aliquam id diam maecenas ultricies mi eget mauris pharetra. Dolor purus non enim praesent elementum facilisis. Purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae. Consectetur adipiscing elit ut aliquam purus sit amet luctus. \r\nEget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:36:29'),
(28, 3, 'Carbonara del Mar', '19.99', '18.50', 'pasta2', 2, 'Amet aliquam id diam maecenas ultricies mi eget mauris pharetra. Dolor purus non enim praesent elementum facilisis. Purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae. Pharetra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. \r\nVel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.Consectetur adipiscing elit ut aliquam purus sit amet luctus.', '2019-08-11 00:36:29'),
(29, 3, 'Stirring it Up', '17.99', '16.50', 'stirfry1', 3, 'Pharetra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. \r\nLeo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:36:29'),
(30, 3, 'Seafarer\'s Sea Cheese Special', '16.99', '15.50', 'pizza1', 4, 'Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. \r\nVel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:36:29'),
(31, 3, 'Pizza-Fare', '15.49', '13.50', 'pizza2', 5, 'Nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. \r\nUrna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. \r\nIaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:36:29'),
(32, 3, 'Late Breakfast #1', '17.99', '16.00', 'waffles', 6, 'Your choice of pharetra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. \r\nQuis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. Leo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. \r\nIaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:38:23'),
(33, 2, 'Tokyo\'s Landing', '23.99', '22.00', 'sushi', 9, 'Sushi with haretra diam sit amet nisl suscipit adipiscing bibendum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Eu volutpat odio facilisis mauris sit amet. Sagittis eu volutpat odio facilisis mauris sit. Ultrices gravida dictum fusce ut placerat. Duis convallis convallis tellus id interdum. Urna et pharetra pharetra massa massa ultricies. Vitae semper quis lectus nulla at. Quis enim lobortis scelerisque fermentum dui faucibus. Diam quis enim lobortis scelerisque fermentum dui faucibus. \r\nLeo in vitae turpis massa sed elementum tempus egestas sed. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. At consectetur lorem donec massa sapien faucibus et molestie. Eget sit amet tellus cras. Iaculis urna id volutpat lacus. Egestas maecenas pharetra convallis posuere morbi leo urna molestie.', '2019-08-11 00:38:23'),
(34, 4, 'The Pita Buttigieg', '17.99', '16.00', 'veg1', 1, 'Sed cras ornare arcu dui vivamus arcu felis bibendum ut. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Et odio pellentesque diam volutpat commodo. \r\nEt malesuada fames ac turpis. Venenatis urna cursus eget nunc. Velit aliquet sagittis id consectetur purus ut. A condimentum vitae sapien pellentesque habitant. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Ullamcorper dignissim cras tincidunt lobortis feugiat. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Nisi vitae suscipit tellus mauris a diam. Netus et malesuada fames ac turpis egestas sed. Dis parturient montes nascetur ridiculus mus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Semper auctor neque vitae tempus. Nulla at volutpat diam ut venenatis tellus in. \r\nUrna molestie at elementum eu facilisis sed odio morbi quis. Pharetra vel turpis nunc eget lorem dolor sed viverra. Euismod quis viverra nibh cras pulvinar mattis.', '2019-08-11 00:49:27'),
(35, 4, 'Low on the Main Deck', '18.99', '18.00', 'veg2', 2, 'Convallis posuere morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.\r\nSed cras ornare arcu dui vivamus arcu felis bibendum ut. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Et odio pellentesque diam volutpat commodo. Et malesuada fames ac turpis. Venenatis urna cursus eget nunc. Velit aliquet sagittis id consectetur purus ut.', '2019-08-11 00:49:27'),
(36, 4, 'Vegetarian\'s Lasagna Wake-Up', '19.99', '17.00', 'veg3', 3, 'Sed cras ornare arcu dui vivamus arcu felis bibendum ut. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Et odio pellentesque diam volutpat commodo. Et malesuada fames ac turpis. Venenatis urna cursus eget nunc. Velit aliquet sagittis id consectetur purus ut.\r\nUrna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.', '2019-08-11 00:49:27'),
(37, 4, 'Popeye\'s Pizza', '15.99', '14.00', 'veg4', 4, 'Vitae sapien pellentesque habitant. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Ullamcorper dignissim cras tincidunt lobortis feugiat. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Nisi vitae suscipit tellus mauris a diam. Netus et malesuada fames ac turpis egestas sed. \r\nDis parturient montes nascetur ridiculus mus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Semper auctor neque vitae tempus. Nulla at volutpat diam ut venenatis tellus in. Urna molestie at elementum eu facilisis sed odio morbi quis. Pharetra vel turpis nunc eget lorem dolor sed viverra. Euismod quis viverra nibh cras pulvinar mattis.', '2019-08-11 00:49:27'),
(38, 6, 'Deep Sea\'s Caesar', '9.99', '7.00', 'salad1', 1, 'A condimentum vitae sapien pellentesque habitant. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Ullamcorper dignissim cras tincidunt lobortis feugiat. \r\nSed cras ornare arcu dui vivamus arcu felis bibendum ut. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Et odio pellentesque diam volutpat commodo. Et malesuada fames ac turpis. Venenatis urna cursus eget nunc. Velit aliquet sagittis id consectetur purus ut.', '2019-08-11 00:53:38'),
(39, 6, 'Le Vinegrette', '11.99', '9.00', 'salad3', 2, 'Convallis posuere morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.\r\nCras tincidunt lobortis feugiat. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Nisi vitae suscipit tellus mauris a diam. Netus et malesuada fames ac turpis egestas sed. Dis parturient montes nascetur ridiculus mus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. ', '2019-08-11 00:53:38'),
(40, 6, 'Chicken of the Sea Salad', '12.99', '11.00', 'salad2', 3, 'Morbi leo urna molestie at. Quis enim lobortis scelerisque fermentum dui faucibus in. Eget velit aliquet sagittis id consectetur. Consequat ac felis donec et.\r\nSed cras ornare arcu dui vivamus arcu felis bibendum ut. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Et odio pellentesque diam volutpat commodo. Et malesuada fames ac turpis. Venenatis urna cursus eget nunc. Velit aliquet sagittis id consectetur purus ut. A condimentum vitae sapien pellentesque habitant. ', '2019-08-11 00:53:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`location`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
