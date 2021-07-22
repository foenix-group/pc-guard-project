-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2021 at 11:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcguardi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyingTicket`
--

CREATE TABLE `buyingTicket` (
  `ticketID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `num` int(2) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyingTicket`
--

INSERT INTO `buyingTicket` (`ticketID`, `userID`, `num`, `title`) VALUES
(1, 6, 1, 'brokenApp'),
(2, 6, 1, 'brokenApp');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatID` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `chatMessage` text DEFAULT NULL,
  `chatDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `imageName` varchar(100) DEFAULT NULL,
  `imageProfile` varchar(100) DEFAULT NULL,
  `userID2` int(11) NOT NULL,
  `destination` varchar(100) NOT NULL DEFAULT 'employee'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatID`, `userName`, `chatMessage`, `chatDate`, `imageName`, `imageProfile`, `userID2`, `destination`) VALUES
(1, 'Bahram Dashti', 'sdkak', '2021-07-22 18:37:01', NULL, NULL, 6, 'employee'),
(2, 'مدیریت', 'مشترک 09398434236 نیار به حل مشکل در نصب داریور های ویندوز دارد', '2021-07-22 18:37:42', NULL, NULL, 1, '5');

-- --------------------------------------------------------

--
-- Table structure for table `emailMessage`
--

CREATE TABLE `emailMessage` (
  `messageID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `messageText` text DEFAULT NULL,
  `messageDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailMessage`
--

INSERT INTO `emailMessage` (`messageID`, `fullName`, `email`, `messageText`, `messageDate`) VALUES
(1, 'Akatosh', 'fromfrom147@gmail.com', 'asasdasda', '2021-07-22 23:07:44'),
(2, 'zahra', 'zahra@gmail.com', 'hello', '2021-07-22 23:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `age` int(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fullAddress` text DEFAULT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `nationalCode` varchar(11) DEFAULT NULL,
  `resome` varchar(100) DEFAULT NULL,
  `maritalStatus` varchar(20) DEFAULT NULL,
  `Access` varchar(10) NOT NULL DEFAULT 'client',
  `request` varchar(10) NOT NULL DEFAULT '0',
  `imageProfile` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `pass`, `fullName`, `age`, `gender`, `email`, `fullAddress`, `phoneNumber`, `nationalCode`, `resome`, `maritalStatus`, `Access`, `request`, `imageProfile`) VALUES
(1, 'admin', 'مدیریت', 20, '', '', '', 'admin', NULL, NULL, NULL, 'management', '0', NULL),
(2, 'sajjad0022', 'سجاد رعیت', NULL, NULL, NULL, NULL, '09221683887', NULL, NULL, NULL, 'client', '0', NULL),
(3, '1234', 'زهرا دشت پیما', NULL, NULL, NULL, NULL, '09171134762', NULL, NULL, NULL, 'client', '0', NULL),
(4, '1234', 'زهرا', NULL, NULL, NULL, NULL, '09121134762', NULL, NULL, NULL, 'employee', '0', NULL),
(5, '1234', 'سجاد', 11, 'male', 'fromfrom147@gmail.com', 'fladkadiadiaw', '09170022767', '3559863279', NULL, 'married', 'employee', '0', 'img/caf57dda87c803ec73375.jpeg'),
(6, '123456789', 'Bahram Dashti', NULL, NULL, NULL, NULL, '09398434236', NULL, NULL, NULL, 'client', '0', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyingTicket`
--
ALTER TABLE `buyingTicket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatID`),
  ADD KEY `userID2` (`userID2`);

--
-- Indexes for table `emailMessage`
--
ALTER TABLE `emailMessage`
  ADD PRIMARY KEY (`messageID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyingTicket`
--
ALTER TABLE `buyingTicket`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emailMessage`
--
ALTER TABLE `emailMessage`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
