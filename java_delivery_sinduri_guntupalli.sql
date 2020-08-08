-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 04:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_delivery_sinduri_guntupalli`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressID` int(10) UNSIGNED NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressID`, `street`, `zip`, `city`, `country`) VALUES
(1, 'Maderstrasse 1', 1040, 'Vienna', 'Austria'),
(2, 'Rajendra Nagar', 530016, 'Visakhapatnam', 'India'),
(3, 'Street 3', 35401, 'Charlottesville', 'USA'),
(4, 'Street 4', 25851, 'Tuscaloosa', 'USA'),
(5, 'Street 5', 22580, 'Tuscaloosa', 'USA'),
(6, 'Street 6', 32580, 'Vienna', 'USA'),
(7, 'Street 7', 42580, 'Vienna', 'Austria'),
(8, 'Street 8', 52580, 'Vienna', 'Austria'),
(9, 'Street 9', 62580, 'Vienna', 'Austria'),
(10, 'Street 10', 72580, 'Vienna', 'Austria'),
(11, 'Street 11', 82580, 'Vienna', 'Austria'),
(12, 'Street 12', 92580, 'Vienna', 'Austria'),
(13, 'Street 13', 533013, 'Visakhapatnam', 'India'),
(14, 'Street 14', 530001, 'Visakhapatnam', 'India'),
(15, 'Street 15', 530020, 'Visakhapatnam', 'India'),
(16, 'Karlsplatz', 1080, 'Vienna', 'Austria'),
(17, 'Seethamadhara', 530013, 'Visakhapatnam', 'India'),
(18, 'Street 18', 35401, 'Charlottesville', 'USA'),
(19, 'Street 19', 25851, 'Tuscaloosa', 'USA'),
(20, 'Street 20', 22580, 'Tuscaloosa', 'USA'),
(21, 'Street 21', 32580, 'Vienna', 'USA'),
(22, 'Street 22', 42580, 'Vienna', 'Austria'),
(23, 'Street 23', 52580, 'Vienna', 'Austria'),
(24, 'Street 24', 62580, 'Vienna', 'Austria'),
(25, 'Street 25', 72580, 'Vienna', 'Austria'),
(26, 'Street 26', 82580, 'Vienna', 'Austria'),
(27, 'Street 27', 92580, 'Vienna', 'Austria'),
(28, 'Street 28', 533013, 'Visakhapatnam', 'India'),
(29, 'Street 29', 530001, 'Visakhapatnam', 'India'),
(30, 'Street 30', 530020, 'Visakhapatnam', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `addressmap`
--

CREATE TABLE `addressmap` (
  `mapID` int(8) UNSIGNED NOT NULL,
  `registerDate` datetime DEFAULT NULL,
  `fkCustomerID` int(10) UNSIGNED DEFAULT NULL,
  `fkAddressID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addressmap`
--

INSERT INTO `addressmap` (`mapID`, `registerDate`, `fkCustomerID`, `fkAddressID`) VALUES
(1, '2015-01-01 14:29:36', 1, 19),
(2, '2017-11-10 14:29:36', 1, 20),
(3, '2015-02-20 14:29:36', 2, 21),
(4, '2015-10-06 14:29:36', 2, 22),
(5, '2015-04-15 14:29:36', 3, 23),
(6, '2017-09-05 14:29:36', 4, 24),
(7, '2016-11-05 14:29:36', 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` int(4) UNSIGNED NOT NULL,
  `branchName` varchar(30) DEFAULT NULL,
  `fkCompanyID` int(3) UNSIGNED DEFAULT NULL,
  `fkAddressID` int(10) UNSIGNED DEFAULT NULL,
  `fkContactID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchName`, `fkCompanyID`, `fkAddressID`, `fkContactID`) VALUES
(1, 'HeadOffice', 1, 2, 2),
(2, 'Tuscaloosa Branch', 1, 3, 3),
(3, 'Karlsplatz Branch', 1, 4, 4),
(4, 'Schwedenplatz Branch', 1, 5, 5),
(5, 'Visakhapatnam Branch', 1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyID` int(3) UNSIGNED NOT NULL,
  `fkAddressID` int(10) UNSIGNED DEFAULT NULL,
  `fkContactID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyID`, `fkAddressID`, `fkContactID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(10) UNSIGNED NOT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `emailID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `phoneNumber`, `emailID`) VALUES
(1, '+436641826474', 'sinduri.g@gmail.com'),
(2, '+436643366474', 'john.doe@gmail.com'),
(3, '+916641826474', 'bruce.banner@gmail.com'),
(4, '+917702171177', 'captaing@gmail.com'),
(5, '+919912453377', 'irong@gmail.com'),
(6, '+919908874594', 'sin@gmail.com'),
(7, '+43664530194', 'sind@gmail.com'),
(8, '+436641826844', 'sing1@gmail.com'),
(9, '+656641826474', 'sing2@gmail.com'),
(10, '+916641826474', 'sing3@gmail.com'),
(11, '+16641826474', 'sing4@gmail.com'),
(12, '+26641826474', 'sing5@gmail.com'),
(13, '+336641826474', 'sing6@gmail.com'),
(14, '+536641826474', 'sing7@gmail.com'),
(15, '+636641826474', 'sing8@gmail.com'),
(16, '+156641826474', 'widow@gmail.com'),
(17, '+166643366474', 'john.doe219@gmail.com'),
(18, '+176641826474', 'john.doe20@gmail.com'),
(19, '187702171177', 'john.doe221@gmail.com'),
(20, '+199912453377', 'john.doe222@gmail.com'),
(21, '+209908874594', 'john.doe223@gmail.com'),
(22, '+21664530194', 'john.doe224@gmail.com'),
(23, '+226641826844', 'john.doe225@gmail.com'),
(24, '+236641826474', 'john.doe226@gmail.com'),
(25, '+2416641826474', 'john.doe227@gmail.com'),
(26, '+25641826474', 'john.doe2@gmail.com'),
(27, '+26141826474', 'john.doe228@gmail.com'),
(28, '+276641826474', 'john.doe229@gmail.com'),
(29, '+286641826474', 'john.doe27@gmail.com'),
(30, '+296641826474', 'john.doe230@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(10) UNSIGNED NOT NULL,
  `customerFirstName` varchar(30) DEFAULT NULL,
  `customerLastName` varchar(30) DEFAULT NULL,
  `fkContactID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerFirstName`, `customerLastName`, `fkContactID`) VALUES
(1, 'Custom1', 'Last1', 19),
(2, 'Custom2', 'Last2', 20),
(3, 'Custom3', 'Last3', 21),
(4, 'Custom4', 'Last4', 22),
(5, 'Custom5', 'Last5', 23);

-- --------------------------------------------------------

--
-- Table structure for table `deliverytype`
--

CREATE TABLE `deliverytype` (
  `typeID` int(10) UNSIGNED NOT NULL,
  `typeName` varchar(40) DEFAULT NULL,
  `increaseInCostInPercent` double(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverytype`
--

INSERT INTO `deliverytype` (`typeID`, `typeName`, `increaseInCostInPercent`) VALUES
(1, 'Standard Shipping', 0.00),
(2, 'Express Shipping', 25.80),
(3, 'Cold Storage', 40.50),
(4, 'Weekend Delivery', 15.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(4) UNSIGNED NOT NULL,
  `employeeFirstName` varchar(30) DEFAULT NULL,
  `employeeLastName` varchar(30) DEFAULT NULL,
  `employeeType` enum('headOfficeManager','headOfficeEmployee','branchManager','branchEmployee','deliveryPersonnel') DEFAULT NULL,
  `hireDate` datetime DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `fkAddressID` int(10) UNSIGNED DEFAULT NULL,
  `fkContactID` int(10) UNSIGNED DEFAULT NULL,
  `fkBranchID` int(10) UNSIGNED DEFAULT NULL,
  `statusEmployee` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `employeeFirstName`, `employeeLastName`, `employeeType`, `hireDate`, `salary`, `fkAddressID`, `fkContactID`, `fkBranchID`, `statusEmployee`) VALUES
(1, 'Black', 'Widow', 'headOfficeManager', '2015-11-05 14:29:36', 30000.00, 7, 7, 1, b'1'),
(2, 'Iron', 'Man', 'branchManager', '2016-01-05 14:29:36', 20000.00, 8, 8, 2, b'1'),
(3, 'Bruce', 'Banner', 'branchManager', '2016-06-05 14:29:36', 20000.00, 9, 9, 3, b'1'),
(4, 'Thor', 'Odinson', 'branchManager', '2017-08-05 14:29:36', 20000.00, 10, 10, 4, b'1'),
(5, 'Captain', 'Marvel', 'branchManager', '2017-03-05 14:29:36', 20000.00, 11, 11, 5, b'1'),
(6, 'A', 'Man', 'headOfficeEmployee', '2016-01-05 14:29:36', 20000.00, 12, 12, 1, b'1'),
(7, 'B', 'Banner', 'deliveryPersonnel', '2016-06-05 14:29:36', 20000.00, 12, 12, 1, b'1'),
(8, 'T', 'Odinson', 'deliveryPersonnel', '2017-08-05 14:29:36', 20000.00, 13, 13, 1, b'1'),
(9, 'C', 'Marvel', 'deliveryPersonnel', '2017-03-05 14:29:36', 20000.00, 14, 14, 1, b'1'),
(10, 'Any', 'Man', 'branchEmployee', '2016-01-05 14:29:36', 15000.00, 15, 15, 2, b'1'),
(11, 'Bunny', 'Banner', 'branchEmployee', '2016-06-05 14:29:36', 15000.00, 16, 16, 3, b'1'),
(12, 'Tiny', 'Odinson', 'branchEmployee', '2017-08-05 14:29:36', 15000.00, 17, 17, 4, b'1'),
(13, 'Curly', 'Marvel', 'branchEmployee', '2017-03-05 14:29:36', 15000.00, 18, 18, 5, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(10) UNSIGNED NOT NULL,
  `parcelWeightGrams` double(10,2) DEFAULT NULL,
  `parcelLengthCms` double(10,1) DEFAULT NULL,
  `parcelBreadthCms` double(10,1) DEFAULT NULL,
  `parcelHeightCms` double(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `parcelWeightGrams`, `parcelLengthCms`, `parcelBreadthCms`, `parcelHeightCms`) VALUES
(1, 10.00, 120.0, 65.0, 15.0),
(2, 20.00, 130.0, 165.0, 175.0),
(3, 15.00, 10.0, 55.0, 175.0),
(4, 8.00, 100.0, 25.0, 175.0),
(5, 12.00, 200.0, 65.0, 175.0),
(6, 5.00, 10.0, 5.0, 17.0),
(7, 7.00, 20.0, 5.0, 15.0);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `mailID` int(8) UNSIGNED NOT NULL,
  `receiveDate` datetime DEFAULT NULL,
  `recipientFirstName` varchar(30) DEFAULT NULL,
  `recipientLastName` varchar(30) DEFAULT NULL,
  `fkCustomerID` int(10) UNSIGNED DEFAULT NULL,
  `fkRecipientAddressID` int(10) UNSIGNED DEFAULT NULL,
  `fkRecipientContactID` int(10) UNSIGNED DEFAULT NULL,
  `fkEmployeeReceivedID` int(10) UNSIGNED DEFAULT NULL,
  `fkDeliveryTypeID` int(10) UNSIGNED DEFAULT NULL,
  `fkInvoiceID` int(10) UNSIGNED DEFAULT NULL,
  `finalDelivery` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mailID`, `receiveDate`, `recipientFirstName`, `recipientLastName`, `fkCustomerID`, `fkRecipientAddressID`, `fkRecipientContactID`, `fkEmployeeReceivedID`, `fkDeliveryTypeID`, `fkInvoiceID`, `finalDelivery`) VALUES
(1, '2015-01-01 14:29:36', 'Jon', 'Doe', 1, 26, 24, 10, 1, 1, b'1'),
(2, '2017-11-10 14:29:36', 'Jon', 'Snow', 1, 27, 25, 10, 2, 2, b'1'),
(3, '2015-02-20 14:29:36', 'Ned', 'Stark', 2, 28, 26, 11, 3, 3, b'1'),
(4, '2015-10-06 14:29:36', 'Kungfu', 'Panda', 2, 29, 27, 12, 4, 4, b'1'),
(5, '2015-04-15 14:29:36', 'Amy', 'Walters', 3, 30, 28, 13, 1, 5, b'1'),
(6, '2017-09-05 14:29:36', 'Radha', 'Doe', 4, 20, 29, 11, 1, 6, b'1'),
(7, '2016-11-05 14:29:36', 'Josh', 'Den', 5, 26, 30, 12, 1, 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `mailstandard`
--

CREATE TABLE `mailstandard` (
  `standardID` int(10) UNSIGNED NOT NULL,
  `setDate` datetime DEFAULT NULL,
  `unitRatePerGram` double(10,2) DEFAULT NULL,
  `maximumLengthCms` double(10,1) DEFAULT NULL,
  `maximumBreadthCms` double(10,1) DEFAULT NULL,
  `maximumHeightCms` double(10,1) DEFAULT NULL,
  `fkCompanyID` int(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailstandard`
--

INSERT INTO `mailstandard` (`standardID`, `setDate`, `unitRatePerGram`, `maximumLengthCms`, `maximumBreadthCms`, `maximumHeightCms`, `fkCompanyID`) VALUES
(1, '2015-11-05 14:29:00', 5.25, 200.0, 200.0, 200.0, 1),
(2, '2016-11-05 10:29:00', 6.25, 300.0, 300.0, 300.0, 1),
(3, '2017-11-05 09:30:00', 7.25, 200.0, 200.0, 200.0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trackinginfo`
--

CREATE TABLE `trackinginfo` (
  `trackingID` int(10) UNSIGNED NOT NULL,
  `updateDate` datetime DEFAULT NULL,
  `fkAddressID` int(10) UNSIGNED DEFAULT NULL,
  `fkEmployeeReceivedID` int(10) UNSIGNED DEFAULT NULL,
  `fkMailID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trackinginfo`
--

INSERT INTO `trackinginfo` (`trackingID`, `updateDate`, `fkAddressID`, `fkEmployeeReceivedID`, `fkMailID`) VALUES
(1, '2015-01-03 14:29:00', 2, 7, 1),
(2, '2015-01-06 10:39:00', 3, 7, 1),
(3, '2015-01-02 09:15:00', 26, 8, 1),
(4, '2017-11-12 14:10:00', 6, 9, 2),
(5, '2017-11-13 13:29:00', 2, 9, 2),
(6, '2015-02-21 14:29:00', 3, 8, 3),
(7, '2015-02-22 14:29:00', 28, 7, 3),
(8, '2015-10-07 12:40:00', 3, 7, 4),
(9, '2015-10-08 14:29:00', 5, 8, 4),
(10, '2015-04-16 09:45:00', 2, 7, 5),
(11, '2015-04-17 14:29:00', 30, 7, 5),
(12, '2017-09-06 16:29:00', 3, 8, 6),
(13, '2017-09-07 14:29:00', 4, 7, 6),
(14, '2017-09-09 06:29:00', 5, 7, 6),
(15, '2017-09-10 14:29:00', 6, 8, 6),
(16, '2017-09-12 13:29:00', 2, 7, 6),
(17, '2017-09-15 12:29:00', 20, 7, 6),
(18, '2016-11-07 14:29:00', 2, 8, 7),
(19, '2016-11-08 14:29:00', 3, 7, 7),
(20, '2016-11-09 14:29:00', 6, 7, 7),
(21, '2016-11-12 14:29:00', 26, 8, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `addressmap`
--
ALTER TABLE `addressmap`
  ADD PRIMARY KEY (`mapID`),
  ADD KEY `fkCustomerID` (`fkCustomerID`),
  ADD KEY `fkAddressID` (`fkAddressID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`),
  ADD KEY `fkCompanyID` (`fkCompanyID`),
  ADD KEY `fkAddressID` (`fkAddressID`),
  ADD KEY `fkContactID` (`fkContactID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyID`),
  ADD KEY `fkAddressID` (`fkAddressID`),
  ADD KEY `fkContactID` (`fkContactID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `fkContactID` (`fkContactID`);

--
-- Indexes for table `deliverytype`
--
ALTER TABLE `deliverytype`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `fkAddressID` (`fkAddressID`),
  ADD KEY `fkContactID` (`fkContactID`),
  ADD KEY `fkBranchID` (`fkBranchID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mailID`),
  ADD KEY `fkCustomerID` (`fkCustomerID`),
  ADD KEY `fkRecipientAddressID` (`fkRecipientAddressID`),
  ADD KEY `fkRecipientContactID` (`fkRecipientContactID`),
  ADD KEY `fkEmployeeReceivedID` (`fkEmployeeReceivedID`),
  ADD KEY `fkDeliveryTypeID` (`fkDeliveryTypeID`),
  ADD KEY `fkInvoiceID` (`fkInvoiceID`);

--
-- Indexes for table `mailstandard`
--
ALTER TABLE `mailstandard`
  ADD PRIMARY KEY (`standardID`),
  ADD KEY `fkCompanyID` (`fkCompanyID`);

--
-- Indexes for table `trackinginfo`
--
ALTER TABLE `trackinginfo`
  ADD PRIMARY KEY (`trackingID`),
  ADD KEY `fkAddressID` (`fkAddressID`),
  ADD KEY `fkEmployeeReceivedID` (`fkEmployeeReceivedID`),
  ADD KEY `fkMailID` (`fkMailID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `addressmap`
--
ALTER TABLE `addressmap`
  MODIFY `mapID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchID` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyID` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliverytype`
--
ALTER TABLE `deliverytype`
  MODIFY `typeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mailID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mailstandard`
--
ALTER TABLE `mailstandard`
  MODIFY `standardID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trackinginfo`
--
ALTER TABLE `trackinginfo`
  MODIFY `trackingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addressmap`
--
ALTER TABLE `addressmap`
  ADD CONSTRAINT `addressmap_ibfk_1` FOREIGN KEY (`fkCustomerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addressmap_ibfk_2` FOREIGN KEY (`fkAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`fkCompanyID`) REFERENCES `company` (`companyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branch_ibfk_2` FOREIGN KEY (`fkAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branch_ibfk_3` FOREIGN KEY (`fkContactID`) REFERENCES `contact` (`contactID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`fkAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`fkContactID`) REFERENCES `contact` (`contactID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fkContactID`) REFERENCES `contact` (`contactID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fkAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`fkContactID`) REFERENCES `contact` (`contactID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`fkBranchID`) REFERENCES `branch` (`branchID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`fkCustomerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mail_ibfk_2` FOREIGN KEY (`fkRecipientAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mail_ibfk_3` FOREIGN KEY (`fkRecipientContactID`) REFERENCES `contact` (`contactID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mail_ibfk_4` FOREIGN KEY (`fkEmployeeReceivedID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mail_ibfk_5` FOREIGN KEY (`fkDeliveryTypeID`) REFERENCES `deliverytype` (`typeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mail_ibfk_6` FOREIGN KEY (`fkInvoiceID`) REFERENCES `invoice` (`invoiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mailstandard`
--
ALTER TABLE `mailstandard`
  ADD CONSTRAINT `mailstandard_ibfk_1` FOREIGN KEY (`fkCompanyID`) REFERENCES `company` (`companyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trackinginfo`
--
ALTER TABLE `trackinginfo`
  ADD CONSTRAINT `trackinginfo_ibfk_1` FOREIGN KEY (`fkAddressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trackinginfo_ibfk_2` FOREIGN KEY (`fkEmployeeReceivedID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trackinginfo_ibfk_3` FOREIGN KEY (`fkMailID`) REFERENCES `mail` (`mailID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
