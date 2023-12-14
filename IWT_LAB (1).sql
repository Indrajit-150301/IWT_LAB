-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2023 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IWT_LAB`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise_5`
--

CREATE TABLE `exercise_5` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `martial_status` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_5`
--

INSERT INTO `exercise_5` (`emp_id`, `name`, `gender`, `file`, `email`, `dob`, `job_title`, `salary`, `martial_status`, `hobby`, `address`) VALUES
(4, 'Rohan raj', 'Male', '', 'indrajitp.150301@gmail.com', '2023-10-03', 'Software Engineer', 200000, 'Unmarried', 'Football', 'patna,Bihar'),
(5, 'Saiful ', 'Female', '', 'mahiyar@avestatechnologies.com', '2023-10-04', 'Web Design', 20000, 'Divorce', 'Football,Vollyball', 'Assam'),
(6, 'Rohan raj', 'Male', '', 'ipeschool365@gmail.com', '2023-10-04', 'Web Design', 3573465, 'Married', 'Cricket,Football', 'dshjdh'),
(7, 'Rohan raj', 'Male', '', 'ipeschool365@gmail.com', '2023-10-04', 'Web Design', 3573465, 'Married', 'Cricket,Football', 'dshjdh'),
(8, 'Indrajit Prasad', 'Male', '', 'indrajitp.150301@gmail.com', '2023-10-03', 'Developer', 40000, 'Unmarried', 'Cricket', 'eureu'),
(9, 'Indrajit Prasad', 'Male', '', 'indrajitp.150301@gmail.com', '2023-10-03', 'Software Engineer', 200000, 'Unmarried', 'Cricket,Football', 'Ahmedabad,Gujarat'),
(10, 'Srujan Samal', 'Male', '', 'srujan@gmail.com', '2004-07-01', 'Web Developer', 40000, 'Unmarried', 'Cooking,Music', 'Odisha'),
(11, 'aman', 'Male', '', 'mahiyar@avestatechnologies.com', '2023-10-10', 'Developer', 1111, 'Married', 'Cooking,Dancing', 'aaaa'),
(12, 'digvijay', 'Male', '', 'digvijay@gmail.com', '2000-01-02', 'gruerihrgeh', 2000000, 'Unmarried', 'Music', 'feiyuehigeruhrh'),
(13, 'digvijay', 'Male', '', 'digvijay@gmail.com', '2000-01-02', 'gruerihrgeh', 2000000, 'Unmarried', 'Music', 'feiyuehigeruhrh');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_6`
--

CREATE TABLE `exercise_6` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(23) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_6`
--

INSERT INTO `exercise_6` (`id`, `name`, `email`, `password`, `gender`, `dob`, `course`, `dt`) VALUES
(20, '', '', '', NULL, NULL, NULL, NULL),
(21, 'ram', 'ram@gmail.com', '123', NULL, NULL, NULL, NULL),
(22, 'indrajit', 'ipeschool365@gmail.com', '111', NULL, NULL, NULL, NULL),
(24, 'Rohan raj', 'indrajit@gmail.com', '123', NULL, NULL, NULL, NULL),
(25, 'indrajit', 'indrajitp.150301@gmail.com', '1234', NULL, NULL, NULL, NULL),
(26, 'Saiful ', 'saiful123@gmail.com', '987', NULL, NULL, NULL, NULL),
(27, 'indrajit', 'abc123@gmail.com', '1234', NULL, NULL, NULL, '2023-10-07'),
(30, 'Priti Patel', 'priti123@gmail.com', '987654', 'Female', '2023-10-04', 'MCA', '2023-10-12'),
(31, 'Vishwajit', 'vishwajit123@gmail.com', '111', 'Male', '2023-10-04', 'MCA', '2023-10-13'),
(32, 'Ravi', 'ravi123@gmail.com', '123', 'Male', '2023-10-05', 'MCA', '2023-10-13'),
(33, 'Balan', 'balan123@gmail.com', '123', 'Male', '2023-10-03', 'MCA', '2023-10-13'),
(34, 'digvijay', 'digvijay@gmail.com', '0000', 'Male', '2000-01-02', 'MCA', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_7`
--

CREATE TABLE `exercise_7` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_7`
--

INSERT INTO `exercise_7` (`id`, `name`, `email`, `password`, `gender`, `dob`, `job_title`, `salary`, `hobby`, `address`, `role`, `dt`) VALUES
(1, 'Indrajit Prasad', 'ipeschool365@gmail.com', '1234', 'Male', '2023-10-04', NULL, NULL, NULL, 'Thaltej,Ahmedabad', 'admin', '2023-10-19'),
(2, 'Vishwajit Prasad', 'vishwajit123@gmail.com', '12345', 'Male', '2023-10-04', NULL, NULL, NULL, 'Gujarat,India', 'admin', '2023-10-19'),
(3, 'Priti Patel', 'priti123@gmail.com', '987654', 'Female', '2023-10-05', 'Web Design', 120000, 'Cooking,Dancing', 'Haryana,India', 'employee', '2023-10-19'),
(4, 'Kushi Mehra', 'kushi123@gmail.com', '1234', 'Female', '2023-10-04', NULL, NULL, NULL, 'Mumbai,Maharashtra,390027', 'admin', '2023-10-26'),
(5, 'tapas', 'tapas123@gmail.com', '123', 'Male', '2023-10-10', NULL, NULL, NULL, 'Thaltej', 'admin', '2023-10-26'),
(6, 'digvijay', 'digvijay@gmail.com', '00', 'Male', '2000-01-02', NULL, NULL, NULL, 'ruey', 'admin', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_8`
--

CREATE TABLE `exercise_8` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` bigint(15) DEFAULT NULL,
  `address` longtext NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `Organization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise_8`
--

INSERT INTO `exercise_8` (`id`, `name`, `email`, `dob`, `mobile`, `address`, `job_title`, `Organization`) VALUES
(8, 'digvijay', 'uerjijh@gmail.com', '2000-01-02', 45786543645, 'ufytehwgjhiegrewjbreh', 'fehugfg', NULL),
(9, 'nitya mam', 'fefg@gmail.com', '2000-01-02', 5365657, 'dfgyughueihguesgy', 'dhuhgjeghuihgrui', NULL),
(10, 'gagan ', 'gagan@gmai.com', '2000-01-02', 4575, 'yuygieruyg7uehrjyu', 'fugehgyeyrg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `practice`
--

CREATE TABLE `practice` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `practice`
--

INSERT INTO `practice` (`id`, `name`, `email`, `password`) VALUES
(1, 'Shyam Raval', 'shyam123@gmail.com', '12345'),
(2, 'Indrajit Prasad gh', 'indrajitp.150301@gmail.com', '2321'),
(6, 'tridip', 'tridip123@gmail.com', '32345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercise_5`
--
ALTER TABLE `exercise_5`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `exercise_6`
--
ALTER TABLE `exercise_6`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `exercise_7`
--
ALTER TABLE `exercise_7`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `exercise_8`
--
ALTER TABLE `exercise_8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise_5`
--
ALTER TABLE `exercise_5`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exercise_6`
--
ALTER TABLE `exercise_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `exercise_7`
--
ALTER TABLE `exercise_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exercise_8`
--
ALTER TABLE `exercise_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `practice`
--
ALTER TABLE `practice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
