-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 20 Jan 2023 pada 03.41
-- Versi server: 8.0.31
-- Versi PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_menus`
--

DROP TABLE IF EXISTS `booking_menus`;
CREATE TABLE IF NOT EXISTS `booking_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(200) DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking_menus`
--

INSERT INTO `booking_menus` (`id`, `booking_id`, `item_id`, `qty`) VALUES
(1, '5ccbd8f5609b3', 4, 2),
(2, '5ccbd8f5609b3', 5, 2),
(3, '5ea89f17417d4', 4, 1),
(4, '6343950125e87', 4, 3),
(5, '6343950125e87', 5, 3),
(6, '6343950125e87', 6, 3),
(7, '634395e3ac221', 4, 2),
(8, '634395e3ac221', 5, 2),
(9, '634395e3ac221', 6, 1),
(10, '63529cd0e423f', 4, 4),
(11, '63529cd0e423f', 5, 5),
(12, '63533fb055871', 4, 2),
(13, '63533fb055871', 5, 1),
(14, '63533fb055871', 6, 8),
(15, '637de332d6a39', 14, 3),
(16, '637de332d6a39', 10, 1),
(17, '637de332d6a39', 13, 3),
(18, '63806ce30f5b3', 14, 2),
(19, '63806ce30f5b3', 15, 1),
(20, '63806ce30f5b3', 10, 1),
(21, '63806ce30f5b3', 13, 1),
(22, '6388405dcbeea', 14, 2),
(23, '6388405dcbeea', 15, 1),
(24, '6388405dcbeea', 10, 1),
(25, '638d9ce39a7d6', 14, 2),
(26, '638d9ce39a7d6', 15, 2),
(27, '638d9ce39a7d6', 10, 1),
(28, '638d9ce39a7d6', 13, 3),
(29, '638d9da80bc36', 14, 2),
(30, '638d9da80bc36', 15, 1),
(31, '638d9da80bc36', 10, 2),
(32, '638d9da80bc36', 13, 2),
(33, '638d9e5c36e39', 14, 2),
(34, '638d9e5c36e39', 15, 1),
(35, '638d9e5c36e39', 10, 4),
(36, '638d9e5c36e39', 13, 3),
(37, '638d9ecae4a90', 14, 2),
(38, '638d9ecae4a90', 15, 2),
(39, '638d9ecae4a90', 10, 3),
(40, '638da051cbea6', 14, 3),
(41, '638da051cbea6', 15, 1),
(42, '638da051cbea6', 10, 1),
(43, '638da0cb01408', 14, 2),
(44, '638da0cb01408', 15, 1),
(45, '638da0cb01408', 10, 3),
(46, '638da2f228aa9', 14, 2),
(47, '638da2f228aa9', 15, 1),
(48, '638da2f228aa9', 10, 2),
(49, '638da2f228aa9', 13, 2),
(50, '638da5263cd88', 14, 2),
(51, '638da5263cd88', 15, 1),
(52, '638da5263cd88', 10, 1),
(53, '638da5263cd88', 13, 1),
(54, '638da5fcb1b6b', 14, 2),
(55, '638da5fcb1b6b', 15, 1),
(56, '638da5fcb1b6b', 10, 3),
(57, '638da5fcb1b6b', 13, 2),
(58, '638daaf7a018e', 14, 1),
(59, '638daaf7a018e', 15, 1),
(60, '638daaf7a018e', 10, 1),
(61, '638daaf7a018e', 13, 1),
(62, '63907819b519b', 14, 2),
(63, '63907819b519b', 15, 1),
(64, '63907819b519b', 10, 2),
(65, '63909cf3c414a', 14, 2),
(66, '63909cf3c414a', 15, 1),
(67, '63909cf3c414a', 10, 1),
(68, '63909d6cd17cf', 14, 1),
(69, '63909d6cd17cf', 15, 1),
(70, '63909d6cd17cf', 10, 1),
(71, '63909df743da0', 14, 1),
(72, '63909df743da0', 15, 1),
(73, '63909df743da0', 10, 1),
(74, '63909f14be45b', 14, 1),
(75, '63909f14be45b', 15, 1),
(76, '63909f14be45b', 10, 1),
(77, '6390a00945265', 14, 1),
(78, '6390a00945265', 15, 1),
(79, '6390a00945265', 10, 1),
(80, '6390a12aeefdf', 14, 1),
(81, '6390a12aeefdf', 15, 1),
(82, '6390a12aeefdf', 10, 1),
(83, '6390a1d793344', 14, 1),
(84, '6390a1d793344', 15, 1),
(85, '6390a1d793344', 10, 1),
(86, '6390a2919edce', 14, 1),
(87, '6390a2919edce', 15, 1),
(88, '6390a2919edce', 10, 1),
(89, '639461512650e', 14, 1),
(90, '639461512650e', 15, 1),
(91, '639461512650e', 10, 1),
(92, '639461512650e', 13, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

DROP TABLE IF EXISTS `kursi`;
CREATE TABLE IF NOT EXISTS `kursi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tbl_id` int DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursi`
--

INSERT INTO `kursi` (`id`, `tbl_id`, `chair_no`) VALUES
(24, 3, '1-1'),
(25, 3, '1-2'),
(26, 3, '1-3'),
(27, 3, '1-4'),
(28, 3, '1-5'),
(29, 3, '1-6'),
(30, 4, '2-1'),
(31, 4, '2-2'),
(32, 4, '2-3'),
(33, 4, '2-4'),
(34, 5, 'TBL-3-1'),
(35, 5, 'TBL-3-2'),
(36, 5, 'TBL-3-3'),
(37, 5, 'TBL-3-4'),
(38, 6, 'TBL-4-1'),
(39, 6, 'TBL-4-2'),
(40, 6, 'TBL-4-3'),
(41, 7, 'TBL-1-1'),
(42, 7, 'TBL-1-2'),
(43, 7, 'TBL-1-3'),
(44, 7, 'TBL-1-4'),
(45, 7, 'TBL-1-5'),
(46, 8, 'TBL-2-1'),
(47, 8, 'TBL-2-2'),
(48, 8, 'TBL-2-3'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi_booking`
--

DROP TABLE IF EXISTS `kursi_booking`;
CREATE TABLE IF NOT EXISTS `kursi_booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursi_booking`
--

INSERT INTO `kursi_booking` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(1, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(2, '5ccbd8f5609b3', 39, 'TBL-4-2'),
(3, '5ea89e1a75e6e', 56, 'TBL-1-2'),
(4, '5ea89e1a75e6e', 57, 'TBL-1-3'),
(5, '5ea89f17417d4', 24, 'TBL-1-1'),
(6, '6343950125e87', 24, 'TBL-1-1'),
(7, '6343950125e87', 25, 'TBL-1-2'),
(8, '6343950125e87', 26, 'TBL-1-3'),
(9, '6343950125e87', 27, 'TBL-1-4'),
(10, '6343950125e87', 28, 'TBL-1-5'),
(11, '6343950125e87', 29, 'TBL-1-6'),
(12, '634395e3ac221', 34, 'TBL-3-1'),
(13, '634395e3ac221', 35, 'TBL-3-2'),
(14, '634395e3ac221', 36, 'TBL-3-3'),
(15, '634395e3ac221', 37, 'TBL-3-4'),
(16, '63529cd0e423f', 25, 'TBL-1-2'),
(17, '63529cd0e423f', 26, 'TBL-1-3'),
(18, '63529cd0e423f', 27, 'TBL-1-4'),
(19, '63529cd0e423f', 28, 'TBL-1-5'),
(20, '63529cd0e423f', 31, 'TBL-2-2'),
(21, '63529cd0e423f', 32, 'TBL-2-3'),
(22, '63533fb055871', 24, 'TBL-1-1'),
(23, '63533fb055871', 25, 'TBL-1-2'),
(24, '63533fb055871', 26, 'TBL-1-3'),
(25, '63533fb055871', 27, 'TBL-1-4'),
(26, '63533fb055871', 28, 'TBL-1-5'),
(27, '63533fb055871', 29, 'TBL-1-6'),
(28, '63533fb055871', 31, 'TBL-2-2'),
(29, '63533fb055871', 32, 'TBL-2-3'),
(30, '63533fb055871', 33, 'TBL-2-4'),
(31, '63533fb055871', 34, 'TBL-3-1'),
(32, '63533fb055871', 35, 'TBL-3-2'),
(33, '63533fb055871', 36, 'TBL-3-3'),
(34, '63533fb055871', 37, 'TBL-3-4'),
(35, '637de332d6a39', 25, 'TBL-1-2'),
(36, '637de332d6a39', 26, 'TBL-1-3'),
(37, '637de332d6a39', 27, 'TBL-1-4'),
(38, '637de332d6a39', 28, 'TBL-1-5'),
(39, '637de332d6a39', 31, 'TBL-2-2'),
(40, '637de332d6a39', 32, 'TBL-2-3'),
(41, '637de332d6a39', 33, 'TBL-2-4'),
(42, '637de332d6a39', 35, 'TBL-3-2'),
(43, '637de332d6a39', 36, 'TBL-3-3'),
(44, '637de332d6a39', 37, 'TBL-3-4'),
(45, '63806ce30f5b3', 26, 'TBL-1-3'),
(46, '63806ce30f5b3', 27, 'TBL-1-4'),
(47, '63806ce30f5b3', 28, 'TBL-1-5'),
(48, '63806ce30f5b3', 31, 'TBL-2-2'),
(49, '63806ce30f5b3', 32, 'TBL-2-3'),
(50, '63806ce30f5b3', 33, 'TBL-2-4'),
(51, '6388405dcbeea', 25, 'TBL-1-2'),
(52, '6388405dcbeea', 26, 'TBL-1-3'),
(53, '6388405dcbeea', 27, 'TBL-1-4'),
(54, '6388405dcbeea', 31, 'TBL-2-2'),
(55, '6388405dcbeea', 32, 'TBL-2-3'),
(56, '638d9ce39a7d6', 30, '2-1'),
(57, '638d9ce39a7d6', 32, '2-3'),
(58, '638d9ce39a7d6', 33, '2-4'),
(59, '638d9ce39a7d6', 35, 'TBL-3-2'),
(60, '638d9ce39a7d6', 36, 'TBL-3-3'),
(61, '638d9ce39a7d6', 37, 'TBL-3-4'),
(62, '638d9da80bc36', 24, '1-1'),
(63, '638d9da80bc36', 25, '1-2'),
(64, '638d9da80bc36', 26, '1-3'),
(65, '638d9da80bc36', 27, '1-4'),
(66, '638d9da80bc36', 28, '1-5'),
(67, '638d9da80bc36', 29, '1-6'),
(68, '638d9da80bc36', 31, '2-2'),
(69, '638d9da80bc36', 34, 'TBL-3-1'),
(70, '638d9da80bc36', 38, 'TBL-4-1'),
(71, '638d9da80bc36', 39, 'TBL-4-2'),
(72, '638d9da80bc36', 40, 'TBL-4-3'),
(73, '638d9e5c36e39', 25, '1-2'),
(74, '638d9e5c36e39', 26, '1-3'),
(75, '638d9e5c36e39', 27, '1-4'),
(76, '638d9e5c36e39', 28, '1-5'),
(77, '638d9e5c36e39', 31, '2-2'),
(78, '638d9e5c36e39', 32, '2-3'),
(79, '638d9e5c36e39', 34, 'TBL-3-1'),
(80, '638d9e5c36e39', 35, 'TBL-3-2'),
(81, '638d9ecae4a90', 25, '1-2'),
(82, '638d9ecae4a90', 26, '1-3'),
(83, '638d9ecae4a90', 27, '1-4'),
(84, '638da051cbea6', 31, '2-2'),
(85, '638da051cbea6', 32, '2-3'),
(86, '638da051cbea6', 33, '2-4'),
(87, '638da0cb01408', 30, '2-1'),
(88, '638da0cb01408', 31, '2-2'),
(89, '638da0cb01408', 32, '2-3'),
(90, '638da0cb01408', 33, '2-4'),
(91, '638da2f228aa9', 25, '1-2'),
(92, '638da2f228aa9', 26, '1-3'),
(93, '638da2f228aa9', 27, '1-4'),
(94, '638da5263cd88', 28, '1-5'),
(95, '638da5263cd88', 29, '1-6'),
(96, '638da5263cd88', 32, '2-3'),
(97, '638da5263cd88', 33, '2-4'),
(98, '638da5fcb1b6b', 25, '1-2'),
(99, '638da5fcb1b6b', 26, '1-3'),
(100, '638da5fcb1b6b', 27, '1-4'),
(101, '638da5fcb1b6b', 28, '1-5'),
(102, '638da5fcb1b6b', 31, '2-2'),
(103, '638da5fcb1b6b', 32, '2-3'),
(104, '638daaf7a018e', 25, '1-2'),
(105, '638daaf7a018e', 26, '1-3'),
(106, '638daaf7a018e', 27, '1-4'),
(107, '638daaf7a018e', 32, '2-3'),
(108, '638daaf7a018e', 33, '2-4'),
(109, '63907819b519b', 26, '1-3'),
(110, '63907819b519b', 27, '1-4'),
(111, '63909cf3c414a', 27, '1-4'),
(112, '63909d6cd17cf', 27, '1-4'),
(113, '63909df743da0', 28, '1-5'),
(114, '63909f14be45b', 27, '1-4'),
(115, '6390a00945265', 25, '1-2'),
(116, '6390a12aeefdf', 28, '1-5'),
(117, '6390a1d793344', 26, '1-3'),
(118, '6390a2919edce', 30, '2-1'),
(119, '639461512650e', 31, '2-2'),
(120, '639461512650e', 32, '2-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meja`
--

DROP TABLE IF EXISTS `meja`;
CREATE TABLE IF NOT EXISTS `meja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `res_id` int DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meja`
--

INSERT INTO `meja` (`id`, `res_id`, `table_name`) VALUES
(3, 4, 'Meja 1'),
(4, 4, 'Meja 2'),
(5, 4, 'Meja 3'),
(6, 4, 'Meja 4'),
(12, 4, 'Meja 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `res_id` int DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `gambar` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `gambar`) VALUES
(10, 4, 'Susu', 'Es Teh', 'Tempat', 50000, '571-2324.jpg'),
(13, 4, 'Tropical Sunrice Mocktail', 'Mocktail', 'Drink', 18000, 'ropical sunrice.jpg'),
(14, 4, 'Nila Telur Asin', 'Ikan Nila Saus Telur Asin dan Nasi', 'Fast Food', 25000, 'download.jpg'),
(15, 4, 'Outdoor Wedding Pool', 'Tempat Kolam Renang dan Dekorasi', 'Tempat', 300000, 'wedd.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
CREATE TABLE IF NOT EXISTS `reservasi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `catatan` varchar(500) DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0- reject, 1-confirmed',
  `reject` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `phone`, `booking_date`, `booking_time`, `bill`, `layout`, `catatan`, `transactionid`, `status`, `reject`) VALUES
(18, '638da5263cd88', 4, 12, '2022-12-05', '02:00:38pm', 'cheche ', '123898', '2022-12-05', '10:00am', 373000, '0', NULL, '23454546', 0, 0),
(19, '638da5fcb1b6b', 4, 12, '2022-12-05', '02:04:12pm', 'cheche ', '123898', '2022-12-30', '10:00am', 401000, '0', 'mencoba', '1233', 1, 0),
(20, '638daaf7a018e', 4, 12, '2022-12-05', '02:25:27pm', 'cheche ', '123898', '2022-12-28', '10:00am', 348000, '0', 'mencoba dan mencobaaa', '1234', 1, 0),
(21, '63907819b519b', 4, 12, '2022-12-07', '05:25:13pm', 'cheche ', '123898', '2022-12-08', '10:00am', 360000, '0', 'wwe', '1111', 0, 0),
(22, '63909cf3c414a', 4, 12, '2022-12-07', '08:02:27pm', 'cheche ', '123898', '2022-12-14', '10:00am', 355000, '0', '', '123', 0, 0),
(23, '63909d6cd17cf', 4, 12, '2022-12-07', '08:04:28pm', 'cheche ', '123898', '2022-12-20', '10:00am', 330000, 'layout1.jpg', '', '23322332', 0, 0),
(24, '63909df743da0', 4, 12, '2022-12-07', '08:06:47pm', 'cheche ', '123898', '2022-12-08', '10:00am', 330000, 'layout2.jpg', 'dwedwd', '32233232', 0, 0),
(25, '63909f14be45b', 4, 12, '2022-12-07', '08:11:32pm', 'cheche ', '123898', '2022-12-07', '10:00am', 330000, 'layout2.jpg', 'saad', '1313', 0, 0),
(26, '6390a00945265', 4, 16, '2022-12-07', '08:15:37pm', 'isya ', '0863423234', '2022-12-08', '10:00am', 330000, 'layout1.jpg', 'qwedeqdqw', '1212', 0, 0),
(27, '6390a12aeefdf', 4, 16, '2022-12-07', '08:20:26pm', 'isya ', '0863423234', '2022-12-07', '10:00am', 330000, 'layout3.jpg', 'dsdwdwdw', '121221', 1, 0),
(28, '6390a1d793344', 4, 16, '2022-12-07', '08:23:19pm', 'isya ', '0863423234', '2022-12-07', '10:00am', 330000, 'layout2.jpg', 'wdewdwedde', '2332323232', 1, 0),
(29, '6390a2919edce', 4, 16, '2022-12-07', '08:26:25pm', 'isya ', '0863423234', '2022-12-14', '10:00am', 330000, 'layout2.jpg', 'dadasdsa', '12211221', 1, 0),
(30, '639461512650e', 4, 12, '2022-12-10', '04:37:05pm', 'cheche ', '123898', '2022-12-11', '10:00am', 348000, 'layout1.jpg', 'swedesdsedwed', '1212', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int NOT NULL DEFAULT '0' COMMENT '0-not approve,1-approve ',
  `role` int DEFAULT NULL COMMENT '1 = restaurant, 2 = customer ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `phone`, `address`, `logo`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(4, 'Cafe Sentani Garden', 'park@gmail.com', '01821356478', 'Jl. Durian No.35, Kejuron, Kec. Taman, Kota Madiun, Jawa Timur 63161', 'view 3.jpeg', '123', '01821356478', 0, 1),
(9, 'Ratan', 'ratan.hazra004@gmail.com', '01516189260', '44/2, Indira Road, Rajabazar, Farmgate', 'chicken birayni.jpg', '123', NULL, 1, 2),
(12, 'cheche', 'chesiya@gmail.com', '123898', 'Madiun', 'WhatsApp Image 2022-10-04 at 16.03.22.jpeg', '123', NULL, 0, 2),
(13, 'Chesiya', 'noviachelsia@gmail.com', '0971625351', 'Madiun', 'WhatsApp Image 2022-10-04 at 16.03.22.jpeg', '123', NULL, 0, 2),
(14, 'qwerty', 'i@mail.com', '32456789', 'wertyuio', 'Desain tanpa judul (21).png', '12345', NULL, 0, 2),
(15, 'Chesiya Novia Wulandari', 'cloud@gmail.com', '085731104111', '123', '', '123', NULL, 0, 2),
(16, 'isya', 'isak.akhsanil@gmail.com', '0863423234', 'wewewewe', '', '123123', NULL, 0, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
