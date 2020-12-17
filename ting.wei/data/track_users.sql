-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 02:48 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tingwei666`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `age` int(64) NOT NULL,
  `gender` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `age`, `gender`, `password`, `img`, `date_create`) VALUES
(1, 'Vicki Harris', 'user1', 'user1@gmail.com', 14, 'female', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607040378.224_b1f9d175186215.5c45fcb513aad.jpg', '2020-09-01 04:22:20'),
(2, 'Harris Hood', 'user2', 'user2@gmail.com', 18, 'male', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/722/fff/?text=user2', '2020-08-23 08:35:06'),
(3, 'Shannon Pacheco', 'user3', 'user3@gmail.com', 16, 'male', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/848/fff/?text=user3', '2020-04-06 06:35:21'),
(4, 'Cobb Hartman', 'user4', 'user4@gmail.com', 7, 'male', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/806/fff/?text=user4', '2020-04-14 04:06:48'),
(5, 'Amie Dale', 'user5', 'user5@gmail.com', 10, 'female', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/889/fff/?text=user5', '2020-05-17 09:21:51'),
(6, 'Marylou Good', 'user6', 'user6@gmail.com', 17, 'female', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/778/fff/?text=user6', '2020-07-24 07:23:15'),
(7, 'Owens Evans', 'user7', 'user7@gmail.com', 13, 'male', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/732/fff/?text=user7', '2020-07-13 03:47:55'),
(8, 'Elvira Wagner', 'user8', 'user8@gmail.com', 6, 'female', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/812/fff/?text=user8', '2020-04-03 06:22:16'),
(9, 'Herring Payne', 'user9', 'user9@gmail.com', 17, 'male', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/753/fff/?text=user9', '2020-04-10 12:32:03'),
(10, 'Maritza Rosario', 'user10', 'user10@gmail.com', 11, 'female', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/940/fff/?text=user10', '2020-10-22 12:41:29'),
(11, '', 'ting', 'ting@gmail.com', 0, '', '1a1dc91c907325c69271ddf0c944bc72', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/defaultUserPhoto.png', '2020-12-08 22:18:03'),
(12, '', 'tinggg', '1111@gmail.com', 0, '', '1a1dc91c907325c69271ddf0c944bc72', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/defaultUserPhoto.png', '2020-12-08 22:29:16'),
(13, 'Jake Joseph', 'user0', 'jakejoseph@gmail.com', 12, '', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608238120.7335_boyphtot.jpeg', '2020-12-10 00:52:22'),
(14, '', 'testUser1', 'testuser1@gmail.com', 0, '', '1a1dc91c907325c69271ddf0c944bc72', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/defaultUserPhoto.png', '2020-12-17 14:08:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
