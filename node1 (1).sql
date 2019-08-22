-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2019 at 05:42 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(30) NOT NULL,
  `userID` int(30) NOT NULL,
  `hotelid` int(30) NOT NULL,
  `hName` varchar(100) NOT NULL,
  `hAddress` varchar(100) NOT NULL,
  `roomType` varchar(30) NOT NULL,
  `checkin` varchar(30) NOT NULL,
  `checkout` varchar(30) NOT NULL,
  `paid` int(30) NOT NULL,
  `due` int(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userID`, `hotelid`, `hName`, `hAddress`, `roomType`, `checkin`, `checkout`, `paid`, `due`, `status`) VALUES
(65, 2, 2, 'New Olive Hotel', '13/A Kemal Ataturk', 'suite', '7/2/2019', '7/17/2019', 0, 0, 'Booked'),
(66, 2, 2, 'New Olive Hotel', '13/A Kemal Ataturk', 'suite', '7/16/2019', '7/30/2019', 0, 0, 'Booked'),
(67, 2, 1, 'New Orleans Hotel', '38/A AKA Street', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(69, 2, 1, 'New Orleans Hotel', '38/A AKA Street', 'suite', '7/2/2019', '7/4/2019', 0, 0, 'Booked'),
(73, 2, 2, 'New Olive Hotel', 'Dubai', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(74, 2, 2, 'New Olive Hotel', 'Dubai', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(75, 2, 2, 'New Olive Hotel', 'Dubai', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(76, 2, 2, 'New Olive Hotel', 'Dubai', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(77, 2, 2, 'New Olive Hotel', 'Dubai', 'suite', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(78, 2, 2, 'New Olive Hotel', 'Dubai', 'deluxe', '7/2/2019', '7/3/2019', 0, 0, 'Booked'),
(79, 2, 2, 'New Olive Hotel', 'Dubai', 'deluxe', '7/2/2019', '7/3/2019', 0, 0, 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `location` varchar(100) NOT NULL,
  `totalroom` varchar(25) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `location`, `totalroom`, `price`) VALUES
(1, 'aa', 'dhaka', '120', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(30) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `hotelAddress` varchar(100) NOT NULL,
  `suite` int(30) NOT NULL,
  `family` int(30) NOT NULL,
  `deluxe` int(30) NOT NULL,
  `classic` int(30) NOT NULL,
  `superior` int(30) NOT NULL,
  `luxury` int(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotelName`, `hotelAddress`, `suite`, `family`, `deluxe`, `classic`, `superior`, `luxury`, `status`) VALUES
(2, 'New Olive Hotel', 'Dubai', 2, 10, 8, 20, 20, 20, 'active'),
(3, 'asd', 'dfg', 22, 3, 45, 34, 4, 3, 'active'),
(5, 'kshjdf', 'qe', 3, 4, 5, 6, 2, 2, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dateofbirth` varchar(60) NOT NULL,
  `salary` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `username`, `email`, `contact`, `address`, `gender`, `dateofbirth`, `salary`, `password`, `status`) VALUES
(18, 'Rifat', 'rafsan@gmail.com', '01557867911', 'Jigatola', 'Male', '1996-02-08', 31000, '12345678', 'Inactive'),
(21, 'saif', 'saif@gmail.com', '111811111111', '34/A rt Street new york', 'Male', '2019-07-09', 40000, '123456789', 'Active'),
(20, 'Santosa', 'san@gmail.com', '111811111111', '34/A rt Street new york', 'Male', '2019-07-01', 200000, '0123456789', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pQuantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pName`, `pQuantity`) VALUES
(4, 'Mobile', '2'),
(6, 'LED TV', '9');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `salary` int(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `hotelname` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `name`, `email`, `password`, `dob`, `gender`, `salary`, `phone`, `address`, `hotelname`, `status`) VALUES
(1, 'hasan', 'asd@gamil.com', 'asd', '2019-07-11', 'Female', 3445, '345', 'fbcv', 'New Olive Hotel', 'active'),
(2, 'rich', 'asd@gamil.com', 'ds', '2019-07-10', 'Female', 345, '345', 'fgh', 'New Orleans Hotel', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `receive` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `sender`, `sms`, `receive`) VALUES
(1, 'Admin', 'hello', 'HR'),
(2, 'HR', 'as', 'Admin'),
(3, 'HR', 'as', 'Receptionist'),
(4, 'Admin', 'asd', 'HR'),
(5, 'Admin', 'hey, HR-- I wanna ban you', 'HR'),
(6, 'Admin', 'kjs', 'HR'),
(7, 'Admin', '123321', 'HR'),
(8, 'HR', 'gfd', 'Receptionist'),
(9, 'HR', 'gffsd', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `email`, `phone`, `password`, `type`) VALUES
(1, 'John Doe', '33/A AKA Street, New Jersey', 'john@gmail.com', '+8801345454545', '10000', 'client'),
(2, 'Toufiqul Islam', '13/A Uttara, Dhaka', 'richtoufiq98@gmail.com', '+8801345454547', '999999', 'client'),
(11, 'Henry gillbart', '34/A rt Street new york', 'henry@gmail.com', '+8801333333333', '123432', 'hr'),
(12, 'Josh Albert', '45/KA New Hampshere', 'josh@gmail.com', '+8803456789012', '234432', 'admin'),
(13, 'Aswad', 'Merul Badda', 'aswad@gmail.com', '+8801789632540', '123', 'receptionist'),
(14, 'Toufiqul Islam', '34/A rt Street new york', 'toufiq@gmail.com', '1333333333', '123456789', 'receptionist'),
(15, 'Alex', '34/A rt Street new york', 'alex@gmail.com', '111811111111', '1234567890', 'hr'),
(16, 'Santosa', '34/A rt Street new york', 'san@gmail.com', '111811111111', '0123456789', 'hr'),
(17, 'AlexSantosa', '34/A rt Street new york', 'ale@gmail.com', '+8801333333333', '23456', 'client'),
(18, 'Alex Arnold', '34/A rt Street new york', 'alexx@gmail.com', '+8801333333333', '0909', 'client'),
(19, 'saif', '34/A rt Street new york', 'saif@gmail.com', '111811111111', '123456789', 'hr'),
(20, 'asd', '34/A rt Street new york', 'HR@gmail.com', '1333333333', '12345678', 'receptionist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
