-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 29, 2024 at 04:58 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TaskManager`
--
CREATE DATABASE IF NOT EXISTS `TaskManager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `TaskManager`;

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category` (
  `Id` int UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(100001, 'Important'),
(100002, 'Home'),
(100003, 'Work');

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
  `Id` int UNSIGNED NOT NULL,
  `Task` varchar(255) NOT NULL,
  `IsComplete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`Id`, `Task`, `IsComplete`) VALUES
(100001, 'Buy Milk', 0),
(100002, 'Feed Cat', 1),
(100003, 'Finish Project', 0);

-- --------------------------------------------------------

--
-- Table structure for table `List`
--

DROP TABLE IF EXISTS `List`;
CREATE TABLE `List` (
  `ItemId` int UNSIGNED NOT NULL,
  `CategoryId` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `List`
--

INSERT INTO `List` (`ItemId`, `CategoryId`) VALUES
(100001, 100002),
(100002, 100001),
(100002, 100002),
(100003, 100001),
(100003, 100003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
