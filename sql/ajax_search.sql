-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2017 at 08:19 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `country` varchar(50) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `flag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `currency`, `flag`) VALUES
(1, 'Sri Lanka', 'Sri Lankan Rupees', 'pics/srilanka.png'),
(2, 'India', 'Indian Rupees', 'pics/india.png'),
(3, 'Australia', 'Australian dollar', 'pics/australia.png'),
(4, 'Pakistan', 'Pakistan Rupee', 'pics/pakistan.png'),
(5, 'Russia', 'Ruble', 'pics/russia.png'),
(6, 'United States', 'Dollar', 'pics/us.png'),
(7, 'United Kingdom', 'Pound sterling', 'pics/uk.png'),
(8, 'Spain', 'Euro', 'pics/spain.png'),
(9, 'Bangladesh', '	Taka', 'pics/bangladesh.png'),
(10, 'New Zealand', 'New Zealand dollar', 'pics/newzealand.png'),
(11, 'South Africa', 'Rand', 'pics/safrica.png'),
(12, 'Canada', 'Canadian dollar', 'pics/canada.png'),
(13, 'Denmark', 'Danish krone', 'pics/denmark.png'),
(14, 'France', 'Euro', 'pics/france.png'),
(15, 'Thailand', 'Baht', 'pics/thailand.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
