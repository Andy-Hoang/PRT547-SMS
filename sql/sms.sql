-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 12:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Andy Hoang', 'andy.hoang@cdu.com', 'andyhoang'),
(2, 'CDU Admin', 'cdu.admin@cdu.com', 'andyhoang');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_short_name` varchar(250) NOT NULL,
  `course_full_name` varchar(250) NOT NULL,
  `course_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_short_name`, `course_full_name`, `course_date`) VALUES
(44, 'Y.9.Math', 'Year 9 Mathematics', '15-10-2021'),
(45, 'Y.10.Chem', 'Year 10 Chemistry	', '14-10-2021'),
(46, 'Y.10.IT	', 'Year 10 Information Technology', '18-10-2021'),
(48, 'Y.9.HX', 'Year 9 History	', '16-10-2021');



-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `standerd` varchar(255) NOT NULL,
  `username` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `rollno`, `standerd`, `username`, `name`, `gender`, `contact`, `email`, `password`, `city`, `image`) VALUES
(20, '1', '10', 'andy', 'Andy Hoang', 'male', '123456789', 'andy.hoang@cdu.com', 'andyhoang', 'Darwin', 'user.png'),
(21, '2', '11', 'thisari', 'Thisari Imalka', 'female', '257384724', 'thisari.imalka@cdu.com', 'thisari', 'Katherine', 'firdos.jpg'),
(22, '6', '9', 'deepak', 'Deepak Humagain', 'male', '437439200', 'deepak.humagain@cdu.com', 'deepak', 'Alice Springs', 'user.png'),
(27, '10', '12', 'IT', 'Awesome IT', 'female', '3745930373', 'awesome.it@cdu.com', 'awesome', 'Darwin', 'girl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `position` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `contact`, `gender`, `position`, `password`, `address`, `image`) VALUES
(1, 'Andy Hoang', 'andy.hoang@cdu.com', '9867503256', 'male', 'Manager', 'andyhoang', 'Darwin city, Darwin, NT', 'user.png'),
(8, 'CDU Admin', 'cdu.admin@cdu.com', '7236901464', 'female', 'Head Teacher', 'andyhoang', 'Katherine, NT', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
