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
(41, 1, 'Fish Styx', '23.00', '20.00', 'fish-grill', 1, 'Lorem ipsum dolor sit amet, eam eros probatus volutpat in, habemus fierent referrentur et sit. Ne errem referrentur pro, vis detracto nominavi aliquando et. Ne stet argumentum pro. Quidam epicurei his et, amet inciderint cu vel, ne vis omnium molestie imperdiet.', '0000-00-00 00:00:00'),
(42, 1, 'Le Filet', '22.00', '19.00', 'fish-grill2', 2, 'Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. Eos ad illum moderatius definitionem, eos aliquid ullamcorper et. No pri harum soluta oportere, vocent eripuit consectetuer pro ex.', '0000-00-00 00:00:00'),
(43, 1, 'Big Red', '42.00', '38.00', 'lobster', 3, 'An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis. Cibo intellegat et cum, an sit legimus officiis consequat. Enim brute suavitate ut nec.\r\nSea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. ', '0000-00-00 00:00:00'),
(44, 1, 'Ahab, King of Crabs', '27.00', '24.00', 'crabs', 4, 'Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis.', '0000-00-00 00:00:00'),
(45, 1, 'Crabby Cabbage', '18.00', '17.00', 'crab-cabbage', 5, 'A salad made of seafood, an voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis. Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis.', '0000-00-00 00:00:00'),
(46, 1, 'Talking Tokyo', '29.00', '27.00', 'sashimi', 6, 'Sashimi is a form of art, so an voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis. Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis.', '0000-00-00 00:00:00'),
(47, 1, 'Shrimp McCaffy', '19.00', '17.00', 'shrimp', 6, 'Voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis. Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis.', '0000-00-00 00:00:00'),
(48, 1, 'Eelectric', '29.00', '27.00', 'eel', 7, 'The ell may not be electric, but it is certainly a delicacy. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis. Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. An voluptua sapientem nec, sit ne molestie volutpat. Vel aeque deseruisse no. Nusquam repudiare adversarium te sed, sea te mundi inermis maiestatis.', '0000-00-00 00:00:00'),
(49, 2, 'Burger of the Sea', '18.00', '16.00', 'burger', 1, 'Fresh off of the grill, sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. Eos ad illum moderatius definitionem, eos aliquid ullamcorper et. No pri harum soluta oportere, vocent eripuit consectetuer pro ex.', '0000-00-00 00:00:00'),
(50, 2, 'Dog\'s Day at Sea', '19.00', '17.00', 'hotdogs-bbq', 3, 'Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. Eos ad illum moderatius definitionem, eos aliquid ullamcorper et. No pri harum soluta oportere, vocent eripuit consectetuer pro ex.', '0000-00-00 00:00:00'),
(51, 2, 'Der Hamburger', '21.00', '19.00', 'hamburger-egg', 2, 'A hamburger the way it was meant to be.  Sea ut docendi prodesset dissentias, populo quaestio sadipscing cu pri. Et laboramus vulputate vel, id eum sensibus laboramus. Qui ignota feugait eu, audiam albucius lucilius sea at. Eos ad illum moderatius definitionem, eos aliquid ullamcorper et. No pri harum soluta oportere, vocent eripuit consectetuer pro ex.', '0000-00-00 00:00:00'),
(52, 2, 'Schnitt\'s Griller', '25.00', '23.00', 'chicken-schnitzel', 4, 'It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout. Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore. While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '0000-00-00 00:00:00'),
(53, 3, 'Carbon of the Sea', '22.00', '20.00', 'pasta-carbonara', 1, 'Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore. While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '0000-00-00 00:00:00'),
(54, 3, 'Sea Monster Pasta', '25.00', '24.00', 'pasta', 6, 'Its words and letters have been changed by addition or removal, so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore. While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '0000-00-00 00:00:00'),
(55, 3, 'Spagh at Sea', '22.00', '20.00', 'pasta2', 5, 'Ne duo fugit mentitum nominati. Te vix vidisse accusata, putent epicuri persequeris et vis. Nam vitae nullam integre eu. Qui postulant patrioque no. Sed ut nobis civibus argumentum. Te nam primis scaevola, justo aliquid nonumes eu mea, his no brute maiestatis.', '0000-00-00 00:00:00'),
(56, 5, 'The Pita Buttigieg', '24.00', '22.00', 'pita', 1, 'At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. \r\n\r\n', '0000-00-00 00:00:00'),
(57, 5, 'Millennial Special', '21.00', '19.00', 'avocado-toast', 2, 'Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repella', '0000-00-00 00:00:00'),
(58, 5, 'Grubby Crust of the Landfarer', '18.00', '17.00', 'sandwich', 3, 'Nisl rhoncus mattis rhoncus urna. A iaculis at erat pellentesque. Tempor commodo ullamcorper a lacus vestibulum sed. Euismod in pellentesque massa placerat duis. Imperdiet proin fermentum leo vel orci porta non pulvinar. Vulputate dignissim suspendisse in est ante. At volutpat diam ut venenatis tellus in metus vulputate eu. Tortor at auctor urna nunc id cursus. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Arcu felis bibendum ut tristique et egestas.', '0000-00-00 00:00:00'),
(59, 5, 'Four Docked Submarines', '40.00', '37.00', 'sandwich-sub-4', 4, 'Intended for a party of two, dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Arcu felis bibendum ut tristique et egestas. Mauris commodo quis imperdiet massa. Arcu felis bibendum ut tristique et. Sagittis id consectetur purus ut faucibus pulvinar elementum integer. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. In hendrerit gravida rutrum quisque non tellus orci ac auctor.', '0000-00-00 00:00:00'),
(60, 6, 'The Village Green', '12.00', '11.00', 'salad-green', 1, 'Sagittis vitae et leo duis ut diam quam nulla porttitor. Viverra nam libero justo laoreet. In ante metus dictum at tempor. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Euismod in pellentesque massa placerat duis ultricies lacus. Et ligula ullamcorper malesuada proin. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Massa sapien faucibus et molestie ac. Adipiscing enim eu turpis egestas pretium aenean pharetra magna ac. In vitae turpis massa sed elementum tempus egestas sed. Lacus viverra vitae congue eu consequat ac felis. Vitae tortor condimentum lacinia quis vel.', '0000-00-00 00:00:00'),
(61, 6, 'Landfarer\'s Slim Chance', '14.00', '13.00', 'salad', 2, 'Nec ullamcorper sit amet risus nullam eget felis eget. Donec massa sapien faucibus et molestie ac feugiat sed lectus. Commodo elit at imperdiet dui accumsan. Ut diam quam nulla porttitor massa id. Morbi tristique senectus et netus et. Consectetur purus ut faucibus pulvinar elementum integer enim neque. Ut aliquam purus sit amet luctus venenatis lectus magna fringilla. Mauris in aliquam sem fringilla ut. In hac habitasse platea dictumst vestibulum rhoncus. ', '0000-00-00 00:00:00'),
(62, 6, 'Insalat', '15.00', '14.00', 'salad2', 3, 'Ut aliquam purus sit amet luctus venenatis lectus magna fringilla. Mauris in aliquam sem fringilla ut. In hac habitasse platea dictumst vestibulum rhoncus. Vitae aliquet nec ullamcorper sit. Eget nullam non nisi est sit amet. Nunc vel risus commodo viverra maecenas. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Sit amet tellus cras adipiscing enim. Augue mauris augue neque gravida. Arcu felis bibendum ut tristique et egestas quis ipsum.', '0000-00-00 00:00:00'),
(63, 11, 'Vino della Frutta', '75.00', '70.00', 'wine-fruit', 1, 'Sagittis vitae et leo duis ut diam quam nulla porttitor. Viverra nam libero justo laoreet. In ante metus dictum at tempor. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Euismod in pellentesque massa placerat duis ultricies lacus. Et ligula ullamcorper malesuada proin. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Massa sapien faucibus et molestie ac', '0000-00-00 00:00:00'),
(64, 11, 'Spumante', '95.00', '90.00', 'wine-white', 2, 'In vitae turpis massa sed elementum tempus egestas sed. Lacus viverra vitae congue eu consequat ac felis. Vitae tortor condimentum lacinia quis vel.\r\nNec ullamcorper sit amet risus nullam eget felis eget. Donec massa sapien faucibus et molestie ac feugiat sed lectus. Commodo elit at imperdiet dui accumsan. Ut diam quam nulla porttitor massa id. Morbi tristique senectus et netus et. Consectetur purus ut faucibus pulvinar elementum integer enim neque.', '0000-00-00 00:00:00'),
(65, 11, 'Vino Tradizionale', '78.00', '74.00', 'wine-red', 3, 'Lacus viverra vitae congue eu consequat ac felis. Vitae tortor condimentum lacinia quis vel.  Nec ullamcorper sit amet risus nullam eget felis eget. Donec massa sapien faucibus et molestie ac feugiat sed lectus. Commodo elit at imperdiet dui accumsan. Ut diam quam nulla porttitor massa id. Morbi tristique senectus et netus et. Consectetur purus ut faucibus pulvinar elementum integer enim neque.', '0000-00-00 00:00:00'),
(66, 11, 'Vino Rossi', '144.00', '133.00', 'wine-red2', 4, 'Donec massa sapien faucibus et molestie ac feugiat sed lectus. Commodo elit at imperdiet dui accumsan. Ut diam quam nulla porttitor massa id. Morbi tristique senectus et netus et. Consectetur purus ut faucibus pulvinar elementum integer enim neque. Ut aliquam purus sit amet luctus venenatis lectus magna fringilla. Mauris in aliquam sem fringilla ut.\r\nIn ante metus dictum at tempor. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Euismod in pellentesque massa placerat duis ultricies lacus. Et ligula ullamcorper malesuada proin. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Massa sapien faucibus et molestie ac.', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
