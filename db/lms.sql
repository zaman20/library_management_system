-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 05:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_admin`
--

CREATE TABLE `lms_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_admin`
--

INSERT INTO `lms_admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `lms_author`
--

CREATE TABLE `lms_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `author_status` enum('Enable','Disable') NOT NULL,
  `author_created_on` varchar(30) NOT NULL,
  `author_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_author`
--

INSERT INTO `lms_author` (`author_id`, `author_name`, `author_status`, `author_created_on`, `author_updated_on`) VALUES
(1, 'E. Balagurusamy', 'Enable', '2024-02-10 17:20:55', ''),
(25, 'B. Holdsworth', 'Enable', '2024-02-10 17:22:25', '2024-02-10 17:22:35'),
(28, 'Ramez Elmasri', 'Enable', '2024-02-10 20:50:28', ''),
(29, 'Bjarne Stroustrup', 'Enable', '2024-02-10 20:52:36', ''),
(30, 'Ian Sommerville', 'Enable', '2024-02-10 20:57:07', ''),
(31, 'Gennifer Niederst', 'Enable', '2024-02-10 20:59:24', '2024-02-10 20:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `lms_book`
--

CREATE TABLE `lms_book` (
  `book_id` int(11) NOT NULL,
  `book_category` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_location_rack` varchar(100) NOT NULL,
  `book_name` text NOT NULL,
  `book_isbn_number` varchar(30) NOT NULL,
  `book_no_of_copy` int(5) NOT NULL,
  `book_status` enum('Enable','Disable') NOT NULL,
  `book_added_on` varchar(30) NOT NULL,
  `book_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_book`
--

INSERT INTO `lms_book` (`book_id`, `book_category`, `book_author`, `book_location_rack`, `book_name`, `book_isbn_number`, `book_no_of_copy`, `book_status`, `book_added_on`, `book_updated_on`) VALUES
(22, 'Programming', 'Bjarne Stroustrup', 'R1', 'The C++ Programming Language', '1234567', 2, 'Enable', '2024-02-10 20:53:27', '2024-02-12 22:49:17'),
(23, 'Software Engineering', 'Ian Sommerville', 'R4', 'Software Enginnering', '12345678', 0, 'Enable', '2024-02-10 20:57:49', '2024-02-12 22:29:46'),
(24, 'web design', 'Gennifer Niederst', 'R6', 'Learning Web Design', '123456789', 1, 'Disable', '2024-02-10 21:00:29', '2024-02-11 20:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `lms_category`
--

CREATE TABLE `lms_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_status` enum('Enable','Disable') NOT NULL,
  `category_created_on` varchar(30) NOT NULL,
  `category_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_category`
--

INSERT INTO `lms_category` (`category_id`, `category_name`, `category_status`, `category_created_on`, `category_updated_on`) VALUES
(8, 'Algorithm', 'Enable', '2024-02-10 17:32:30', '2024-02-11 22:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `lms_issue_book`
--

CREATE TABLE `lms_issue_book` (
  `issue_book_id` int(11) NOT NULL,
  `book_id` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `issue_date_time` varchar(30) NOT NULL,
  `expected_return_date` varchar(30) NOT NULL,
  `return_date_time` varchar(30) NOT NULL,
  `book_fines` varchar(30) NOT NULL,
  `book_issue_status` enum('Issue','Return','Not Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_issue_book`
--

INSERT INTO `lms_issue_book` (`issue_book_id`, `book_id`, `user_id`, `issue_date_time`, `expected_return_date`, `return_date_time`, `book_fines`, `book_issue_status`) VALUES
(4, '856325774562', 'U37570190', '2021-11-13 15:57:29', '2021-11-23 15:57:29', '2021-11-14 16:51:42', '0', 'Return'),
(5, '856325774562', 'U37570190', '2021-11-14 17:04:13', '2021-11-24 17:04:13', '2021-11-14 17:05:47', '0', 'Return'),
(6, '85478569856', 'U37570190', '2021-11-14 17:07:04', '2021-11-24 17:07:04', '2021-11-14 17:07:55', '0', 'Return'),
(7, '753951852123', 'U52357788', '2021-11-17 11:03:04', '2021-11-27 11:03:04', '2021-11-17 11:05:29', '0', 'Return'),
(8, '852369852123', 'U59564819', '2021-12-28 17:59:06', '2022-01-07 17:59:06', '2022-01-03 12:44:15', '0', 'Return'),
(9, '852369753951', 'U59564819', '2021-12-28 18:03:30', '2022-01-07 18:03:30', '2022-01-03 12:43:28', '0', 'Return'),
(10, '744785963520', 'U24567871', '2024-02-10 15:45:02', '2024-02-20 15:45:02', '', '0', 'Issue'),
(11, '744785963520', 'U37570190', '2024-02-10 15:53:06', '2024-02-20 15:53:06', '2024-02-10 21:26:41', '0', 'Return'),
(12, '744785963520', 'U59564819', '2024-02-10 17:06:26', '2024-02-20 17:06:26', '2024-02-10 21:26:31', '0', 'Return'),
(13, '123456789', 'U37570190', '2024-02-10 17:07:50', '2024-02-20 17:07:50', '2024-02-10 17:08:08', '0', 'Return'),
(14, '123456789', 'U97813761', '2024-02-10 21:28:05', '2024-02-20 21:28:05', '', '0', 'Issue'),
(15, '123456789', 'U46809095', '2024-02-10 21:28:52', '2024-02-20 21:28:52', '2024-02-10 21:33:19', '0', 'Return'),
(16, '1234', 'U97813761', '2024-02-11 20:11:07', '2024-02-21 20:11:07', '', '0', 'Issue'),
(24, '1234567', 'U20806225', '2024-02-12 22:44:12', '2024-02-12 20:34:00', '', '0', 'Not Return'),
(25, '1234567', 'U20806225', '2024-02-12 22:46:33', '2024-02-22 22:46:33', '', '0', 'Issue'),
(26, '1234567', 'U20806225', '2024-02-12 22:49:17', '2024-02-19 22:49:17', '', '0', 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `lms_location_rack`
--

CREATE TABLE `lms_location_rack` (
  `location_rack_id` int(11) NOT NULL,
  `location_rack_name` varchar(200) NOT NULL,
  `location_rack_status` enum('Enable','Disable') NOT NULL,
  `location_rack_created_on` varchar(30) NOT NULL,
  `location_rack_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_location_rack`
--

INSERT INTO `lms_location_rack` (`location_rack_id`, `location_rack_name`, `location_rack_status`, `location_rack_created_on`, `location_rack_updated_on`) VALUES
(14, 'R1', 'Enable', '2024-02-10 17:26:22', ''),
(15, 'R2', 'Enable', '2024-02-10 17:26:34', ''),
(16, 'R3', 'Enable', '2024-02-10 17:26:40', ''),
(17, 'R4', 'Enable', '2024-02-10 17:26:50', ''),
(18, 'R5', 'Enable', '2024-02-10 17:26:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_setting`
--

CREATE TABLE `lms_setting` (
  `setting_id` int(11) NOT NULL,
  `library_name` varchar(200) NOT NULL,
  `library_address` text NOT NULL,
  `library_contact_number` varchar(30) NOT NULL,
  `library_email_address` varchar(100) NOT NULL,
  `library_total_book_issue_day` int(5) NOT NULL,
  `library_one_day_fine` decimal(4,2) NOT NULL,
  `library_issue_total_book_per_user` int(3) NOT NULL,
  `library_currency` varchar(30) NOT NULL,
  `library_timezone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_setting`
--

INSERT INTO `lms_setting` (`setting_id`, `library_name`, `library_address`, `library_contact_number`, `library_email_address`, `library_total_book_issue_day`, `library_one_day_fine`, `library_issue_total_book_per_user`, `library_currency`, `library_timezone`) VALUES
(1, 'ABC Library', 'Basherhut, Dinajpur', '7539518521', 'abc_library@gmail.com', 7, 5.00, 3, 'BDT', 'Asia/Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE `lms_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_address` text NOT NULL,
  `user_contact_no` varchar(30) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_email_address` varchar(200) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_verificaton_code` varchar(100) NOT NULL,
  `user_verification_status` enum('No','Yes') NOT NULL,
  `user_unique_id` varchar(30) NOT NULL,
  `user_status` enum('Enable','Disable') NOT NULL,
  `user_created_on` varchar(30) NOT NULL,
  `user_updated_on` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`user_id`, `user_name`, `user_address`, `user_contact_no`, `user_profile`, `user_email_address`, `user_password`, `user_verificaton_code`, `user_verification_status`, `user_unique_id`, `user_status`, `user_created_on`, `user_updated_on`) VALUES
(12, 'mizan1', 'gf,df,gsa', '018910239488', '1707580334-986918746.jpg', 'mizan1@gmail.com', '1234', '6945a3cb896b8150fb879e3dcb389ffe', 'No', 'U46809095', 'Enable', '2024-02-10 21:22:14', '2024-02-10 21:33:05'),
(13, 'zaman', 'basherhut', '89999999999999', '1707666104-2038293745.png', 'zaman@gmail.com', '1234', 'efa5789e93a7c816fcd23bebc2ee8873', 'No', 'U20806225', 'Enable', '2024-02-11 21:41:44', '2024-02-12 22:03:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lms_admin`
--
ALTER TABLE `lms_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `lms_author`
--
ALTER TABLE `lms_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `lms_book`
--
ALTER TABLE `lms_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lms_category`
--
ALTER TABLE `lms_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  ADD PRIMARY KEY (`issue_book_id`);

--
-- Indexes for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  ADD PRIMARY KEY (`location_rack_id`);

--
-- Indexes for table `lms_setting`
--
ALTER TABLE `lms_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `lms_user`
--
ALTER TABLE `lms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lms_admin`
--
ALTER TABLE `lms_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_author`
--
ALTER TABLE `lms_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lms_book`
--
ALTER TABLE `lms_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lms_category`
--
ALTER TABLE `lms_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  MODIFY `issue_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  MODIFY `location_rack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lms_setting`
--
ALTER TABLE `lms_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_user`
--
ALTER TABLE `lms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
