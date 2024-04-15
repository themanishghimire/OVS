-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 03:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `admin_pass` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_pass`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(20) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `uname` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `pass` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `district` text NOT NULL,
  `city` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mstatus` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `votes` int(100) NOT NULL,
  `roles` varchar(10) NOT NULL,
  `partyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `fname`, `lname`, `email`, `age`, `uname`, `pass`, `state`, `district`, `city`, `gender`, `mstatus`, `status`, `votes`, `roles`, `partyname`) VALUES
(83, 'Sher', 'Deuba', 'sher@gmail.com', 78, 'iamsher', '123456', 'bagmati', 'kathmandu', 'Kathmandu', 'male', 'married', 0, 0, 'candidate', 'Nepali Congress (NC)'),
(84, 'Pushpa', 'Dahal', 'pushpa@gmail.com', 78, 'iampk', '123456', 'bagmati', 'kathmandu', 'kathmandu', 'male', 'married', 1, 2, 'candidate', 'CPN(Maoist-centre)'),
(85, 'KP', 'Oli', 'kpoli@gmail.com', 78, 'iamkp', 'abcdefg', 'Bagmati', 'kathmandu', 'Kathmandu', 'male', 'married', 1, 2, 'candidate', 'CPN (UML)');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(20) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `uname` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `pass` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `district` text NOT NULL,
  `city` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mstatus` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `votes` int(100) NOT NULL,
  `roles` varchar(10) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `ai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `fname`, `lname`, `email`, `age`, `uname`, `pass`, `state`, `district`, `city`, `gender`, `mstatus`, `status`, `votes`, `roles`, `partyname`, `ai`) VALUES
(83, 'Sher', 'Deuba', 'sher@gmail.com', 78, 'iamsher', '123456', 'bagmati', 'kathmandu', 'Kathmandu', 'male', 'married', 0, 0, 'candidate', 'Nepali Congress (NC)', 11),
(84, 'Pushpa', 'Dahal', 'pushpa@gmail.com', 78, 'iampk', '123456', 'bagmati', 'kathmandu', 'kathmandu', 'male', 'married', 1, 2, 'candidate', 'CPN(Maoist-centre)', 12),
(85, 'KP', 'Oli', 'kpoli@gmail.com', 78, 'iamkp', 'abcdefg', 'Bagmati', 'kathmandu', 'Kathmandu', 'male', 'married', 1, 2, 'candidate', 'CPN (UML)', 13);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `id` int(20) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `uname` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `pass` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `district` text NOT NULL,
  `city` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mstatus` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `roles` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`id`, `fname`, `lname`, `email`, `age`, `uname`, `pass`, `state`, `district`, `city`, `gender`, `mstatus`, `status`, `roles`) VALUES
(88, 'Manish', 'Ghimire', 'manish@gmail.com', 23, 'manishg', '123456', 'bagmati', 'kathmandu', 'Kathmandu', 'male', 'unmarried', 1, 'voter'),
(89, 'Swagat', 'Ghimire', 'ghimireswagat3@gmail.com', 21, 'swagatg', '123456', 'Lumbini', 'Palpa', 'Tansen', 'male', 'unmarried', 0, 'voter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `ai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
