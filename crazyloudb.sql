-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 03:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crazyloudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addressid` int(11) NOT NULL,
  `streetaddress` varchar(125) NOT NULL,
  `suite` varchar(8) NOT NULL,
  `city` varchar(35) NOT NULL,
  `province` varchar(3) NOT NULL,
  `postalcode` varchar(7) NOT NULL,
  `country` varchar(3) NOT NULL,
  `userid` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addressid`, `streetaddress`, `suite`, `city`, `province`, `postalcode`, `country`, `userid`, `active`) VALUES
(12, '1112 shaw St. \r\n', '', 'Toronto', 'ON', 'M6H4W1', 'CA', 10, 1),
(15, '2121 bloor St.', '', 'Toronto', 'ON', 'M5R 6H3', '', 13, 1),
(27, '1011 Lansdowne Ave', '', 'Toronto', 'ON', 'M6H 4G1', 'CA', 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(35) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `active`) VALUES
(1, 'Rock', 1),
(2, 'Pop', 1),
(3, 'Hiphop', 1),
(4, 'Country ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categorymusicstor`
--

CREATE TABLE `categorymusicstor` (
  `musicid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorymusicstor`
--

INSERT INTO `categorymusicstor` (`musicid`, `categoryid`, `active`) VALUES
(1, 1, 1),
(2, 2, 1),
(15, 1, 0),
(15, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(56) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `email`, `password`, `active`) VALUES
(1, 'John', 'Doe', 'JohnD@georgebrown.ca', '9816135', 1),
(2, 'Amma', 'Jone', 'jones@georgebrown.ca', '68168', 1),
(3, 'Bloa', 'Bloe', 'bla@georgebrown.ca', '1651651', 1),
(5, 'joe', 'jo', 'jo@georgebrown.ca', '6516', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emailaddresses`
--

CREATE TABLE `emailaddresses` (
  `emailaddressid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoicenumber` int(11) NOT NULL DEFAULT 0,
  `customerid` int(11) NOT NULL,
  `billingaddress` int(11) NOT NULL,
  `ordernumber` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `paymentmethod` varchar(20) NOT NULL,
  `taxrate` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `musicstor`
--

CREATE TABLE `musicstor` (
  `musicid` int(11) NOT NULL,
  `musicname` varchar(45) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `albume` varchar(35) NOT NULL,
  `category` varchar(35) NOT NULL,
  `artist` varchar(35) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderaddresses`
--

CREATE TABLE `orderaddresses` (
  `orderaddressid` int(11) NOT NULL,
  `streetaddress` varchar(125) NOT NULL,
  `suite` varchar(6) NOT NULL,
  `city` varchar(35) NOT NULL,
  `province` varchar(3) NOT NULL,
  `postalcode` varchar(7) NOT NULL,
  `country` varchar(3) NOT NULL,
  `cpfirstname` varchar(40) NOT NULL,
  `cplastname` varchar(40) NOT NULL,
  `cpphone` varchar(14) NOT NULL,
  `orderdetailsnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetailsid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE `phonenumbers` (
  `phoneid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `phonetype` varchar(2) NOT NULL,
  `ext` varchar(6) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonenumbers`
--

INSERT INTO `phonenumbers` (`phoneid`, `customerid`, `phone`, `phonetype`, `ext`, `active`) VALUES
(1, 1, '6516168161', 'H', '', 1),
(2, 1, '351351351', 'W', '4558', 1),
(3, 1, '351513513', 'C', '', 1),
(4, 2, '6516514', 'H', '', 1),
(26, 12, '35148113513', 'H', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addressid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `categorymusicstor`
--
ALTER TABLE `categorymusicstor`
  ADD PRIMARY KEY (`musicid`,`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  ADD PRIMARY KEY (`emailaddressid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoicenumber`);

--
-- Indexes for table `musicstor`
--
ALTER TABLE `musicstor`
  ADD PRIMARY KEY (`musicid`);

--
-- Indexes for table `orderaddresses`
--
ALTER TABLE `orderaddresses`
  ADD PRIMARY KEY (`orderaddressid`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetailsid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  ADD PRIMARY KEY (`phoneid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  MODIFY `emailaddressid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `musicstor`
--
ALTER TABLE `musicstor`
  MODIFY `musicid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orderaddresses`
--
ALTER TABLE `orderaddresses`
  MODIFY `orderaddressid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetailsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  MODIFY `phoneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
