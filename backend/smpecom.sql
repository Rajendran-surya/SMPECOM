-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecom
CREATE DATABASE IF NOT EXISTS `ecom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `ecom`;

-- Dumping data for table ecom.addresses: ~1 rows (approximately)
INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `street_name`, `country`, `phone`, `pincode`, `user_id`) VALUES
	(1, 'Test Address', 'Test Address', 'Bangalore', 'Karnataka', 'Koli farm gate', 'India', '9855698981', 560083, 1);

-- Dumping data for table ecom.categories: ~2 rows (approximately)
INSERT INTO `categories` (`id`, `title`) VALUES
	(2, 'Electronics'),
	(3, 'Mobiles');

-- Dumping data for table ecom.orders: ~81 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`) VALUES
	(7, 1),
	(8, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(77, 1),
	(78, 1),
	(79, 1),
	(80, 1),
	(81, 1),
	(82, 1),
	(83, 1),
	(84, 1),
	(85, 1),
	(86, 1),
	(87, 1),
	(88, 1),
	(89, 1),
	(90, 1),
	(91, 1),
	(93, 1),
	(94, 1),
	(95, 1),
	(96, 1),
	(97, 1),
	(98, 1),
	(99, 1),
	(100, 1),
	(101, 1),
	(102, 1),
	(103, 1);

-- Dumping data for table ecom.orders_details: ~34 rows (approximately)
INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
	(4, 7, 4, 1),
	(6, 8, 5, 1),
	(45, 39, 1, 3),
	(49, 40, 1, 2),
	(66, 52, 4, 1),
	(68, 54, 1, 1),
	(70, 56, 1, 1),
	(71, 56, 4, 1),
	(84, 62, 1, 1),
	(85, 62, 4, 1),
	(90, 64, 1, 1),
	(97, 68, 8, 2),
	(99, 69, 5, 2),
	(104, 71, 1, 2),
	(105, 71, 4, 6),
	(107, 72, 1, 1),
	(110, 73, 4, 1),
	(111, 74, 5, 1),
	(116, 78, 1, 1),
	(119, 79, 8, 1),
	(121, 80, 1, 1),
	(123, 81, 4, 3),
	(128, 83, 5, 1),
	(131, 85, 4, 1),
	(133, 87, 4, 3),
	(136, 89, 4, 2),
	(137, 89, 5, 3),
	(139, 90, 4, 4),
	(145, 95, 5, 1),
	(149, 96, 4, 1),
	(152, 97, 5, 1),
	(154, 98, 4, 3),
	(156, 99, 5, 2),
	(161, 103, 4, 3);

-- Dumping data for table ecom.products: ~5 rows (approximately)
INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
	(1, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd;https://static.toiimg.com/thumb/msid-56933980,width-640,resizemode-4,imgsize-85436/56933980.jpg;https://cdn.mos.cms.futurecdn.net/3328be45e8c7fe5194055b4c687fb769-1200-80.jpeg;https://img.etimg.com/thumb/width-640,height-480,imgsize-76492,resizemode-1,msid-52464286/46.jpg', 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 0, 'Gaming console', 2),
	(4, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 78, 'Gaming console', 2),
	(5, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 83, 'Gaming console', 2),
	(8, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
	(9, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2);

-- Dumping data for table ecom.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
	(1, 'surya', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'surya@gmail.com', 'rahu', 'Surya', 23, 777, '', 'local');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
