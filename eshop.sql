-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2024 lúc 03:19 AM
-- Phiên bản máy phục vụ: 8.3.0
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Mèo', 'Thức ăn cho mèo'),
(2, 'Chó', 'Thức ăn cho chó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `code` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`) VALUES
(1, 'TASscoDa', 'finished', 1),
(2, 'MAs3bO2v', 'finished', 1),
(3, 'u5243LyF', 'finished', 1),
(4, 'DHmqmW9Q', 'pending', 1),
(5, 'sdhghmOm', 'finished', 1),
(6, 'NMhPUvJB', 'pending', 1),
(7, 'rMZyJ6P8', 'pending', 1),
(8, 'gVeW2Wbm', 'pending', 1),
(9, 'wF9GLzqi', 'pending', 1),
(10, 'hAMnJPeM', 'pending', 1),
(11, 'O76hBlJF', 'pending', 1),
(12, 'VA0RCq4v', 'pending', 1),
(13, 'Ea9NMPOX', 'pending', 1),
(14, 'gQRSrytK', 'pending', 1),
(15, 'BDbHbhrv', 'pending', 1),
(16, 'TIiYmwLZ', 'pending', 1),
(17, 'lnFCCiPY', 'pending', 1),
(18, '3pD8fZTt', 'pending', 1),
(19, 'w5YvFQQl', 'pending', 1),
(20, 'cntQ5iJm', 'pending', 1),
(21, '7iFrlFr0', 'pending', 1),
(22, 'wyGPZuGw', 'pending', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `price`, `product_id`, `order_id`) VALUES
(1, 1, 100, 1, 1),
(2, 2, 100, 1, 2),
(3, 1, 100, 4, 2),
(4, 1, 100, 3, 3),
(5, 1, 100, 2, 5),
(6, 1, 12, 2, 13),
(7, 3, 50, 7, 14),
(8, 7, 20, 1, 15),
(9, 2, 10, 4, 15),
(10, 2, 10, 4, 17),
(11, 5, 20, 1, 18),
(12, 6, 60, 5, 18),
(13, 5, 20, 1, 19),
(14, 7, 20000, 1, 20),
(15, 10, 35000, 3, 20),
(16, 5, 60000, 5, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(2048) NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `quantity`, `category_id`) VALUES
(1, 'ACANA Singles', 'ACANA Singles', 'public/images/Product-7-426x426.webp', 20000, 10, 1),
(2, 'Rawr', '', 'public/images/ignore-export1-426x426.webp', 12000, 10, 1),
(3, 'Stella & Chewy’s', '', 'public/images/ignore-export2-426x426.webp', 35000, 10, 1),
(4, 'Applaws Natural', '', 'public/images/ignore-export4-426x426.webp', 10000, 10, 2),
(5, 'BIXBI Hip & Joint Beef', '', 'public/images/ignore-export3-640x636.webp', 60000, 10, 2),
(6, 'The Honest Kitchen', '', 'public/images/ignore-export5-426x426.webp', 15000, 10, 1),
(7, 'ACANA Singles 1', '12232', 'public/images/Product-7-426x426.webp', 50000, 100, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `role`) VALUES
(1, 'admin@gmail.com', '123', 'admin'),
(2, 'linh@gmail.com', '123', 'user'),
(4, 'an@gmail.com', '123', 'user'),
(5, 'khoa@gmail.com', '12345', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
