-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 12:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `created_at`) VALUES
(1, 'Laptop Lenovo', 7500000.00, 2, '2026-10-17 06:22:44'),
(2, 'Mouse Logitech', 250000.00, 10, '2026-10-17 06:22:44'),
(3, 'Keyboard Mechanical', 850000.00, 5, '2026-10-17 06:22:44'),
(5, 'Laptop Asus', 7000000.00, 5, '2026-11-03 09:32:22'),
(6, 'Laptop Lenovo', 7500000.00, 3, '2026-11-03 09:32:22'),
(7, 'Laptop Acer', 6800000.00, 4, '2026-11-03 09:32:22'),
(8, 'Laptop HP', 7200000.00, 2, '2026-11-03 09:32:22'),
(9, 'Laptop Dell', 8000000.00, 3, '2026-11-03 09:32:22'),
(10, 'Mouse Logitech', 150000.00, 15, '2026-11-03 09:32:22'),
(11, 'Mouse Rexus', 120000.00, 10, '2026-11-03 09:32:22'),
(12, 'Keyboard Mechanical', 450000.00, 8, '2026-11-03 09:32:22'),
(13, 'Keyboard Logitech', 350000.00, 9, '2026-11-03 09:32:22'),
(14, 'Monitor LG', 2000000.00, 4, '2026-11-03 09:32:22'),
(15, 'Monitor Samsung', 2300000.00, 5, '2026-11-03 09:32:22'),
(16, 'Printer Epson', 1800000.00, 3, '2026-11-03 09:32:22'),
(17, 'Printer Canon', 1700000.00, 6, '2026-11-03 09:32:22'),
(18, 'Webcam Logitech', 500000.00, 7, '2026-11-03 09:32:22'),
(19, 'Headset Logitech', 300000.00, 8, '2026-11-03 09:32:22'),
(20, 'Headset Rexus', 250000.00, 10, '2026-11-03 09:32:22'),
(21, 'SSD Kingston', 650000.00, 12, '2026-11-03 09:32:22'),
(22, 'SSD Samsung', 850000.00, 6, '2026-11-03 09:32:22'),
(23, 'RAM Kingston 8GB', 450000.00, 14, '2026-11-03 09:32:22'),
(24, 'RAM Corsair 8GB', 550000.00, 9, '2026-11-03 09:32:22'),
(25, 'Flashdisk Sandisk 32GB', 90000.00, 20, '2026-11-03 09:32:22'),
(26, 'Router TP-Link', 400000.00, 5, '2026-11-03 09:32:22'),
(27, 'Router Mikrotik', 950000.00, 4, '2026-11-03 09:32:22'),
(28, 'Speaker JBL', 1200000.00, 3, '2026-11-03 09:32:22'),
(29, 'Kabel HDMI', 50000.00, 30, '2026-11-03 09:32:22'),
(30, 'Laptop Asus', 7000000.00, 5, '2026-11-03 09:37:00'),
(31, 'Laptop Lenovo', 7500000.00, 3, '2026-11-03 09:37:00'),
(32, 'Laptop Acer', 6800000.00, 4, '2026-11-03 09:37:00'),
(33, 'Laptop HP', 7200000.00, 2, '2026-11-03 09:37:00'),
(34, 'Laptop Dell', 8000000.00, 3, '2026-11-03 09:37:00'),
(35, 'Mouse Logitech', 150000.00, 15, '2026-11-03 09:37:00'),
(36, 'Mouse Rexus', 120000.00, 10, '2026-11-03 09:37:00'),
(37, 'Keyboard Mechanical', 450000.00, 8, '2026-11-03 09:37:00'),
(38, 'Keyboard Logitech', 350000.00, 9, '2026-11-03 09:37:00'),
(39, 'Monitor LG', 2000000.00, 4, '2026-11-03 09:37:00'),
(40, 'Monitor Samsung', 2300000.00, 5, '2026-11-03 09:37:00'),
(41, 'Printer Epson', 1800000.00, 3, '2026-11-03 09:37:00'),
(42, 'Printer Canon', 1700000.00, 6, '2026-11-03 09:37:00'),
(43, 'Webcam Logitech', 500000.00, 7, '2026-11-03 09:37:00'),
(44, 'Headset Logitech', 300000.00, 8, '2026-11-03 09:37:00'),
(45, 'Headset Rexus', 250000.00, 10, '2026-11-03 09:37:00'),
(46, 'SSD Kingston', 650000.00, 12, '2026-11-03 09:37:00'),
(47, 'SSD Samsung', 850000.00, 6, '2026-11-03 09:37:00'),
(48, 'RAM Kingston 8GB', 450000.00, 14, '2026-11-03 09:37:00'),
(49, 'RAM Corsair 8GB', 550000.00, 9, '2026-11-03 09:37:00'),
(50, 'Flashdisk Sandisk 32GB', 90000.00, 20, '2026-11-03 09:37:00'),
(51, 'Router TP-Link', 400000.00, 5, '2026-11-03 09:37:00'),
(52, 'Router Mikrotik', 950000.00, 4, '2026-11-03 09:37:00'),
(53, 'Speaker JBL', 1200000.00, 3, '2026-11-03 09:37:00'),
(56, 'realme c33', 2000000.00, 10, '2026-11-03 10:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'Josena');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
