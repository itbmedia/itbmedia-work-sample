CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;


CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;


INSERT INTO `categories` (`id`, `title`) VALUES 
	(1,'Smart phones'),
	(2,'Laptops'),
	(3,'Gaming laptops');

INSERT INTO `products` (`id`, `sku`, `title`, `category_id`, `price`) VALUES 
	(1,'IP5S','iPhone 5s',1,99900),
	(2,'IP6','iPhone 6',1,160000),
	(3,'IPX','iPhone X',1,500000),
	(4,'IP11','iPhone 11',1,799900),
	(5,'SGS10','Samsung Galaxy S10',1,299900),
	(6,'SGS20','Samsung Galaxy S20',1,399900),
	(7,'SGS21','Samsung Galaxy S21',1,459999),
	(8,'SGS21U','Samsung Galaxy S21 Ultra',1,479900),
	(10,'RB16G15S2G','Razer Blade Base Core i7 16GB 256GB SSD 15.6" GTX 1660 Ti',3,2479900),
	(11,'RB16G17S5G','Razer Blade Pro 17 Core i7 16GB 512GB SSD 17.3" RTX 2070',3,3399900),
	(12,'MPB2019512G','MacBook Pro 16 2019 16/512 GB',2,1399900),
	(13,'MPB2021512G','MacBook Pro 13 2021 M1 Chip 16/512 GB',2,2399900),
	(14,'LENTPX395','Lenovo ThinkPad X395',2,1200000);


