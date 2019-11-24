-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2018 at 07:06 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `afile`
--

CREATE TABLE `afile` (
  `fid` int(7) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `afile`
--

INSERT INTO `afile` (`fid`, `name`) VALUES
(1, 'commons-logging-1.1.1-api.jar.zip'),
(2, 'display.php');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(7) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `name`, `email`, `message`) VALUES
(1, 'mahek', 'mahek.haker@gmail.com', ' bye');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `rid` int(7) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dev` varchar(100) NOT NULL,
  `git` varchar(100) NOT NULL,
  `why` varchar(500) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`rid`, `fname`, `lname`, `email`, `dev`, `git`, `why`, `pass`, `username`) VALUES
(2, 'mahek', 'thaker', 'mahek.haker@gmail.com', 'sdcsdcc', 'mrthaker', 'vc c ', '123', 'mr5476'),
(3, 'Deepak', 'Daku', 'dakudepaak108@jungle.com', 'grenades', 'depak', 'ak47', 'depak', 'deepak'),
(4, 'ashish', 'kumar', 'ashisharko@gmail.com', 'asp.net websites', 'ashisharko', 'to host my private client data and share with them', 'wwe', 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `ufiles`
--

CREATE TABLE `ufiles` (
  `fid` int(11) NOT NULL,
  `file` longtext NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `afile`
--
ALTER TABLE `afile`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `ufiles`
--
ALTER TABLE `ufiles`
  ADD PRIMARY KEY (`fid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `afile`
--
ALTER TABLE `afile`
  MODIFY `fid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `rid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ufiles`
--
ALTER TABLE `ufiles`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
