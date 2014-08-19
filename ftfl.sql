-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2014 at 12:42 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `code`, `created`, `modified`) VALUES
(1, 'LARAVEL', 'P-002', '2014-08-10 11:46:09', '2014-08-10 11:46:09'),
(2, 'PHOTOSHOP', 'D-003', '2014-08-10 11:46:09', '2014-08-10 11:46:09'),
(3, 'UNITY 3D', 'G-004', '2014-08-10 11:46:36', '2014-08-10 11:46:36'),
(6, 'ITES', 'I-006', '2014-08-10 15:52:39', '2014-08-10 15:52:39'),
(7, 'MGMT', 'M-007', '2014-08-10 15:52:54', '2014-08-10 15:52:54'),
(14, 'ASP .NET', 'A-005', '2014-08-11 10:16:07', '2014-08-11 10:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `final_results`
--

CREATE TABLE IF NOT EXISTS `final_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `gpa` float NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `final_results`
--

INSERT INTO `final_results` (`id`, `student_id`, `gpa`, `created`, `modified`) VALUES
(1, 11, 5, '2014-08-10 09:54:27', '2014-08-10 09:54:27'),
(2, 12, 4.5, '2014-08-10 09:54:27', '2014-08-10 09:54:27'),
(3, 13, 3.5, '2014-08-10 09:54:27', '2014-08-10 09:54:27'),
(4, 14, 2.5, '2014-08-10 09:54:27', '2014-08-10 09:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `map_students_courses`
--

CREATE TABLE IF NOT EXISTS `map_students_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `map_students_courses`
--

INSERT INTO `map_students_courses` (`id`, `student_id`, `course_id`, `created`, `modified`) VALUES
(81, 51, '1', '2014-08-14 15:00:44', '2014-08-14 15:00:44'),
(82, 51, '2', '2014-08-14 15:00:45', '2014-08-14 15:00:45'),
(86, 51, '6', '2014-08-14 16:09:35', '2014-08-14 16:09:35'),
(87, 51, '7', '2014-08-14 16:09:35', '2014-08-14 16:09:35'),
(88, 53, '1', '2014-08-14 16:11:41', '2014-08-14 16:11:41'),
(89, 53, '2', '2014-08-14 16:11:41', '2014-08-14 16:11:41'),
(90, 54, '7', '2014-08-14 16:11:51', '2014-08-14 16:11:51'),
(91, 54, '14', '2014-08-14 16:11:51', '2014-08-14 16:11:51'),
(92, 55, '1', '2014-08-14 16:12:16', '2014-08-14 16:12:16'),
(93, 55, '14', '2014-08-14 16:12:16', '2014-08-14 16:12:16'),
(94, 55, '2', '2014-08-14 16:12:41', '2014-08-14 16:12:41'),
(95, 55, '3', '2014-08-14 16:12:41', '2014-08-14 16:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `n_students`
--

CREATE TABLE IF NOT EXISTS `n_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(23) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `n_students`
--

INSERT INTO `n_students` (`id`, `name`, `created`, `modified`) VALUES
(11, 'Sajia', '2014-08-10 09:53:20', '2014-08-10 09:53:20'),
(12, 'Daisy', '2014-08-10 09:53:20', '2014-08-10 09:53:20'),
(13, 'Ruhi', '2014-08-10 09:53:20', '2014-08-10 09:53:20'),
(14, 'Sanjib', '2014-08-10 09:53:20', '2014-08-10 09:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `education_level` varchar(10) NOT NULL,
  `gpa` float NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `education_level`, `gpa`, `created`, `modified`) VALUES
(1, 11, 'SSC', 5, '2014-08-10 09:53:54', '2014-08-10 09:53:54'),
(2, 11, 'HSC', 3.5, '2014-08-10 09:53:54', '2014-08-10 09:53:54'),
(3, 11, 'BA', 4, '2014-08-10 09:53:54', '2014-08-10 09:53:54'),
(4, 14, 'BA', 3, '2014-08-10 09:53:54', '2014-08-10 09:53:54'),
(5, 14, 'SSC', 3, '2014-08-10 09:53:54', '2014-08-10 09:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(23) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `created`) VALUES
(51, 'Ruhi', '2014-08-14 15:00:33'),
(53, 'Shahed', '2014-08-14 16:11:18'),
(54, 'Sajia', '2014-08-14 16:11:27'),
(55, 'Sudeb', '2014-08-14 16:12:16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_results`
--
ALTER TABLE `final_results`
  ADD CONSTRAINT `final_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `n_students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `n_students` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
