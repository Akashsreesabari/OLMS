-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 08:30 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `firstName`, `lastName`, `mobile`, `email`, `pic`) VALUES
(1, 'admin1234', '12345', 'jatin', 'sharma', '8750311282', 'jatin.soft1@gmail.com', 'IMG_1490389195384.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(4) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `available` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `price`, `publisher`, `available`) VALUES
(1001, 'c programming', 'yashwant kanetkar', 250, 'krishna', 1),
(1002, 'english', 'jai mehra', 400, 'krishna', 0),
(1003, 'mdfdf', 'aneesha', 500, 'aneesha', 1),
(1004, 'Harrypotter', 'Harry', 500, 'Mass', 0),
(1005, 'The Halloween Day ', 'Hallowen', 450, 'Mahiz', 1),
(1006, 'fgdgggd', 'dgfdhfdh', 524, 'gggg', 0),
(1007, 'C programming', 'ccc', 500, 'cpp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `bookId` int(4) NOT NULL,
  `issueId` int(3) NOT NULL,
  `issueDate` datetime NOT NULL,
  `returnBookId` int(4) NOT NULL,
  `returnId` int(3) NOT NULL,
  `returnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`bookId`, `issueId`, `issueDate`, `returnBookId`, `returnId`, `returnDate`) VALUES
(1002, 1, '2017-06-19 07:00:08', 0, 0, '0000-00-00 00:00:00'),
(0, 0, '2019-11-05 05:07:54', 1001, 19, '2019-11-05 05:08:24'),
(0, 0, '2019-11-08 02:40:44', 1006, 19, '2019-11-09 11:49:47'),
(1006, 19, '2019-11-09 11:52:35', 0, 0, '0000-00-00 00:00:00'),
(0, 0, '2019-11-09 11:53:16', 1001, 19, '2019-11-09 11:53:40'),
(1004, 19, '2019-11-09 11:53:59', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(3) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `position` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstName`, `lastName`, `username`, `pwd`, `position`, `mobile`, `email`, `pic`) VALUES
(1, 'hitesh', 'kumar', 'hitesh1234', '1234', 'Student', '8468907402', 'hitesh.kumarkaushik789@gmail.com', 'IMG_20170401_174753.jpg'),
(2, 'dipesh', 'sharma', 'dipesh1234', '123456', 'Student', '9560989439', 'dipesh.noida@gmail.com', 'C360_2017-01-03-13-09-47-223.jpg'),
(3, 'vivek', 'krishna', 'vivek123', '12345', 'Faculty', '9891813716', 'vivek.krishna01@gmail.com', 'IMG_20160810_093650 1.jpg'),
(4, 'jai', 'mehra', 'jaimehra', '1234', 'Student', '8468907402', 'jai12.noida@gmail.com', ''),
(5, 'abhishek', 'kashyap', 'abhi123', '1234', 'Student', '8826036670', 'abhishek.kashyap12@gmail.com', 'IMG_3181.JPG'),
(6, 'shashikant', 'sharma', 'shashikant1', '12345', 'Student', '9560989439', 'shashi12@gmail.com', 'IMG_20170505_110136.jpg'),
(7, 'himanshu', 'mavi', 'mavi123', '1234', 'Student', '8468907402', 'himanshu.mavi123@gmail.com', 'C360_2017-04-01-11-28-35-724.jpg'),
(8, 'manoj', 'gupta', 'manoj123', '12345', 'Faculty', '9878987898', 'manoj.kumargupta12@gmail.com', ''),
(9, 'aishwarya', 'sharma', 'aishwarya', '12345', 'Faculty', '8745324652', 'aishwarya.sharma12@gmail.com', ''),
(10, 'afzal', 'faridi', 'afzal123', '12345', 'Student', '9834965393', 'strangerjoker12@gmail.com', 'IMG_20160301_132501.jpg'),
(11, 'admin', 'admn', 'admin1', '123', 'Student', '9784584145', 'szdfzd@gmail.com', ''),
(12, 'aaaaaa', 'ssssss', 'zzzzzz', '123', 'Faculty', '9787560000', 'fx123@gmail.com', ''),
(13, 'Mahiz', 'ssa', 'Arunss', '123', 'Student', '9098909890', 'arun@gmail.com', ''),
(14, 'sathish', 'dinesh', '960715105', '12345', 'Student', '9584682125', 'adarsh@gmail.com', ''),
(15, 'Mahiz', 'c', 'arunsas', '123', 'MCA', '9098909456', 'abcd123@gmail.com', ''),
(16, 'MahizC', 'a', '2017/mca/le/029', '12345', 'MCA', '9584682100', 'govindkannangopzzz12@gmail.com', ''),
(17, 'admin', 'dinesh', '2017/mca/le/030', '123', 'MCA', '9584682000', 'abcd12@gmail.com', ''),
(18, 'abcd', 'c', 'admin123', 'qwerty', 'Student', '9584682025', 'arun123@gmail.com', ''),
(19, 'ashok', 's', '2017/mca/le/031', 'asdfg', 'Student', '9584602125', 'arunaa@gmail.com', ''),
(20, 'admin', 's', 'meenus', '12345', 'Faculty', '9546831245', 'sanu120@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `requestforbooks`
--

CREATE TABLE `requestforbooks` (
  `requestId` int(3) NOT NULL,
  `bookName` text NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `requestDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestforbooks`
--

INSERT INTO `requestforbooks` (`requestId`, `bookName`, `authorName`, `description`, `requestDate`) VALUES
(19, 'harrypotter', 'harry', 'gfrctg', '2019-11-04 01:48:19'),
(19, 'harrypotter', 'harry', 'hii', '2019-11-09 11:50:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
