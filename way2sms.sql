-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 05:11 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `way2sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `way_contact`
--

CREATE TABLE `way_contact` (
  `conId` int(11) NOT NULL,
  `conName` varchar(100) DEFAULT NULL,
  `conMobile` varchar(100) DEFAULT NULL,
  `conEmailid` varchar(100) DEFAULT NULL,
  `conGroupid` int(11) DEFAULT NULL,
  `conTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `way_contact`
--

INSERT INTO `way_contact` (`conId`, `conName`, `conMobile`, `conEmailid`, `conGroupid`, `conTime`) VALUES
(1, 'omkar', '9820098200', 'om@gmail.com', 4, '2019-07-24 03:39:46'),
(2, 'omkar', '9820098200', 'om@gmail.com', 3, '2019-07-29 03:39:07'),
(3, 'pratik', '9820098222', 'pratik@gmail.com', 4, '2019-07-29 03:39:17'),
(4, 'rahul', '9820098333', 'rahul@gmail.com', 2, '2019-07-29 03:39:28'),
(5, 'person 1', '9809809800', 'person1@gmail.com', 5, '2019-11-28 05:11:41'),
(6, 'person1', '9820098200', 'person1@gmail.com', 7, '2019-11-28 05:16:53'),
(7, 'person2', '9820098201', 'person2@gmail.com', 8, '2019-11-28 05:17:01'),
(8, 'Rakesh', '9820098200', 'ra@gmail.com', 9, '2019-12-01 05:07:02'),
(9, 'Swapnil', '9820098211', 'sw@gmail.com', 9, '2019-12-01 05:07:12'),
(10, 'swapnil', '9820098200', 'swa@gmail.com', 10, '2019-12-01 05:14:50'),
(11, 'test1', '9820098200', 'test1@gmail.com', 11, '2019-12-07 10:30:46'),
(12, 'test2', '9820098211', 'test2@gmail.com', 12, '2019-12-07 10:30:56'),
(13, 'Rahul', '9820198201', 'rahul@gmail.com', 13, '2019-12-09 11:30:09'),
(14, 'Amey', '9820298202', 'amey@gmail.com', 14, '2019-12-09 11:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `way_group`
--

CREATE TABLE `way_group` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `groupUserid` int(11) DEFAULT NULL,
  `groupTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `way_group`
--

INSERT INTO `way_group` (`groupId`, `groupName`, `groupUserid`, `groupTime`) VALUES
(1, 'Friends', 3, '2019-07-23 05:02:30'),
(2, 'friends', 4, '2019-07-23 05:02:53'),
(3, 'Society', 4, '2019-07-24 03:21:45'),
(4, 'college', 4, '2019-07-24 03:21:49'),
(5, 'Group 1', 6, '2019-11-28 05:09:26'),
(6, 'Group 2', 6, '2019-11-28 05:10:54'),
(7, 'Family', 7, '2019-11-28 05:16:05'),
(8, 'Friends', 7, '2019-11-28 05:16:10'),
(9, 'My Group', 8, '2019-12-01 05:06:45'),
(10, 'My Group', 9, '2019-12-01 05:13:37'),
(11, 'Family', 10, '2019-12-07 10:29:56'),
(12, 'Friends', 10, '2019-12-07 10:29:59'),
(13, 'Met friends', 11, '2019-12-09 11:28:55'),
(14, 'School Friends', 11, '2019-12-09 11:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `way_library`
--

CREATE TABLE `way_library` (
  `libId` int(11) NOT NULL,
  `libName` varchar(100) DEFAULT NULL,
  `libUserid` int(11) DEFAULT NULL,
  `libTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `way_library`
--

INSERT INTO `way_library` (`libId`, `libName`, `libUserid`, `libTime`) VALUES
(3, 'BirthDay', 4, '2019-07-23 04:27:40'),
(4, 'Birthday', 3, '2019-07-23 04:28:13'),
(5, 'Festival', 4, '2019-07-24 03:40:57'),
(6, 'Frienship Day', 4, '2019-07-24 03:41:08'),
(7, 'lib 1', 6, '2019-11-28 05:09:16'),
(8, 'New Year', 7, '2019-11-28 05:15:52'),
(9, 'Diwali', 7, '2019-11-28 05:15:56'),
(10, 'BirthDay', 8, '2019-12-01 05:06:02'),
(11, 'Lib1', 9, '2019-12-01 05:08:35'),
(12, 'Lib2', 9, '2019-12-01 05:08:43'),
(13, 'BirthDay Lib', 10, '2019-12-07 10:29:14'),
(14, 'BirthDay', 11, '2019-12-09 11:28:35'),
(15, 'Diwali', 11, '2019-12-09 11:28:40'),
(16, 'Holi', 11, '2019-12-09 11:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `way_message`
--

CREATE TABLE `way_message` (
  `mesId` int(11) NOT NULL,
  `mesName` varchar(100) DEFAULT NULL,
  `mesLibid` int(11) DEFAULT NULL,
  `mesTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `way_message`
--

INSERT INTO `way_message` (`mesId`, `mesName`, `mesLibid`, `mesTime`) VALUES
(1, 'Wish You Happy BirthDay', 3, '2019-07-24 03:46:12'),
(2, 'Wish You Happy Friend Ship Day', 6, '2019-07-24 03:46:26'),
(3, 'BirthDay 1', 3, '2019-07-29 03:39:43'),
(4, 'Festival 1', 5, '2019-07-29 03:39:49'),
(5, 'Friend1', 6, '2019-07-29 03:39:55'),
(6, 'lib1 message', 7, '2019-11-28 05:10:38'),
(7, 'lib1 message', 7, '2019-11-28 05:11:19'),
(8, 'Wish you happy new year', 8, '2019-11-28 05:16:30'),
(9, 'Wish you happy diwali', 9, '2019-11-28 05:16:37'),
(10, 'Wish You Happy BirthDay', 10, '2019-12-01 05:06:27'),
(11, 'Happy BirthDay', 10, '2019-12-01 05:06:32'),
(12, 'text message 1', 11, '2019-12-01 05:08:54'),
(13, 'text message 2', 12, '2019-12-01 05:08:58'),
(14, 'Happy Burthday', 13, '2019-12-07 10:30:15'),
(15, 'Wish  ou haooy', 13, '2019-12-07 10:30:29'),
(16, 'Wish You Happy BirthDay', 14, '2019-12-09 11:29:20'),
(17, 'Happy BirthDay', 14, '2019-12-09 11:29:23'),
(18, 'Happy Diwali', 15, '2019-12-09 11:29:29'),
(19, 'Widh You Happy Diwali', 15, '2019-12-09 11:29:34'),
(20, 'Have a great Holi', 16, '2019-12-09 11:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `way_sendsms`
--

CREATE TABLE `way_sendsms` (
  `smsId` int(11) NOT NULL,
  `smsConId` int(11) DEFAULT NULL,
  `smsMesId` int(11) DEFAULT NULL,
  `smsTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `way_user`
--

CREATE TABLE `way_user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `userMobile` bigint(20) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `userPhoto` text,
  `userTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `way_user`
--

INSERT INTO `way_user` (`userId`, `userName`, `userMobile`, `userEmail`, `userPhoto`, `userTime`, `userPass`) VALUES
(2, 'omkar', 9820098200, 'omkar@gmail.com', NULL, '2019-06-20 03:34:59', '70c881d4a26984ddce795f6f71817c9cf4480e79'),
(3, 'kshitij', 9820098211, 'kshitij@gmail.com', NULL, '2019-06-20 03:35:20', '70c881d4a26984ddce795f6f71817c9cf4480e79'),
(4, 'pooja', 9820098200, 'pooja@gmail.com', NULL, '2019-07-17 03:56:51', '70c881d4a26984ddce795f6f71817c9cf4480e79'),
(5, 'ashish', 9820198201, 'ashish@gmail.com', NULL, '2019-07-18 04:15:15', 'df51e37c269aa94d38f93e537bf6e2020b21406c'),
(6, 'mahesh', 9820098200, 'mahesh@gmail.com', NULL, '2019-11-28 05:08:46', '86c8425bb4cd54c772a247a51e67f33fa663becd'),
(7, 'akshay', 9619404202, 'ak@gmail.com', NULL, '2019-11-28 05:15:08', '86c8425bb4cd54c772a247a51e67f33fa663becd'),
(8, 'dharmesh', 9820098200, 'dh@gmail.com', NULL, '2019-12-01 05:05:23', '86c8425bb4cd54c772a247a51e67f33fa663becd'),
(9, 'rakesh', 9870987090, 'ra@gmail.com', NULL, '2019-12-01 05:08:21', '86c8425bb4cd54c772a247a51e67f33fa663becd'),
(10, 'test', 9820098200, 'test@gmail.com', NULL, '2019-12-07 10:28:30', '86c8425bb4cd54c772a247a51e67f33fa663becd'),
(11, 'yash', 9820098200, 'yash@gmail.com', NULL, '2019-12-09 11:28:24', 'f2ef27ecfe7d6214b21f9931f1523b1e584aadb5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `way_contact`
--
ALTER TABLE `way_contact`
  ADD PRIMARY KEY (`conId`);

--
-- Indexes for table `way_group`
--
ALTER TABLE `way_group`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `way_library`
--
ALTER TABLE `way_library`
  ADD PRIMARY KEY (`libId`);

--
-- Indexes for table `way_message`
--
ALTER TABLE `way_message`
  ADD PRIMARY KEY (`mesId`);

--
-- Indexes for table `way_sendsms`
--
ALTER TABLE `way_sendsms`
  ADD PRIMARY KEY (`smsId`);

--
-- Indexes for table `way_user`
--
ALTER TABLE `way_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `way_contact`
--
ALTER TABLE `way_contact`
  MODIFY `conId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `way_group`
--
ALTER TABLE `way_group`
  MODIFY `groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `way_library`
--
ALTER TABLE `way_library`
  MODIFY `libId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `way_message`
--
ALTER TABLE `way_message`
  MODIFY `mesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `way_sendsms`
--
ALTER TABLE `way_sendsms`
  MODIFY `smsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `way_user`
--
ALTER TABLE `way_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
