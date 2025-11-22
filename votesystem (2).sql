-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 09:04 AM
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
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin aadhi', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `election_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_id`, `name`, `department`, `year`, `image`, `position_id`, `election_id`) VALUES
(61, 'Adithyan VA', 'BCA', 3, 'uploads/690f7bf551d41_Gemini_Generated_Image_ejiiqlejiiqlejii.png', 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(3, 'B.Com'),
(4, 'BA English'),
(2, 'BBA'),
(1, 'BCA'),
(6, 'M.Com'),
(5, 'MBA');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `election_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Upcoming','Ongoing','Completed') DEFAULT 'Upcoming',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`election_id`, `title`, `description`, `start_date`, `end_date`, `status`, `start_time`, `end_time`) VALUES
(36, 'Elections', NULL, '2025-11-08', '2025-11-08', 'Ongoing', '22:51:00', '22:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL,
  `max_seats` int(11) DEFAULT 1,
  `election_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`position_id`, `position_name`, `max_seats`, `election_id`) VALUES
(1, 'Chairman/Chairperson', 10, NULL),
(2, 'Vice Chairperson (FE)', 10, NULL),
(3, 'General Secretary', 10, NULL),
(4, 'UUC - University Union Councillor', 10, NULL),
(5, 'Arts Club Secretary', 10, NULL),
(6, 'Magazine Editor', 10, NULL),
(7, 'Lady Representative', 10, NULL),
(8, '2nd PG Rep', 10, NULL),
(9, '1st PG Rep', 10, NULL),
(10, '3rd UG Rep', 10, NULL),
(11, '2nd UG Rep', 10, NULL),
(12, '1st UG Rep', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regestration`
--

CREATE TABLE `regestration` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(100) NOT NULL,
  `yearr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regestration`
--

INSERT INTO `regestration` (`student_id`, `name`, `email`, `password`, `department`, `yearr`) VALUES
(101, 'test', 'adithyan.bca23@stcp.ac.in', '$2y$10$2RzEi4pmf740xnj9RtHCl.xf8RBxX/ycKCa1DuR.5s4NdN.OX9aHa', 'BCA', 3),
(901, 'abijith', 'abijith@gmail.com', '$2y$10$0Dc9i2h1r2wcwtyCQcf8guO1tLTK.3YVNboFjlkrsGe0XicwulNra', 'BCA', 3),
(902, 'abhisha', 'abhishaanilkumar06@gmail.com', '$2y$10$crkCMd0BpUvwQ233..IQXe8DpRnSqPE.DJNcuSmUONLN3TYYuN63.', 'BCA', 3),
(903, 'agnus', 'agnus@gmail.com', '$2y$10$.KNBQF/m/b714TQl/x3ZBu5tjyNDdvyY/lXsZC9H.FQJDzDCwClkq', 'BCA', 3),
(904, 'adith', 'adith@gmail.com', '$2y$10$5/m4TeJ7ehQNq7e1kGmG.uQmYigcdJdqV0ReV7KXmaHJjSR/wVF0m', 'BCA', 3),
(905, 'Adithyan VA', 'adithyanva100@gmail.com', '$2y$10$OyMhOhoyk9Wh8EZbWBgtb./Ie2eX5ReUHNrtxs7QnNChAgyeNYypK', 'BCA', 3),
(913, 'anagha', 'anagha.bca23@stcp.ac.in', '$2y$10$QVq3p/UhkVvQfIg1dj/Dq.d4v5csEP1nEoLGc9k6ZC65d18iPQvy2', 'BCA', 3),
(920, 'djersulem', 'djurslinn.bca23@stcp.ac.in', '$2y$10$abn.vMUDhxpu8RNZm59P4utykcKF/br99gvknOmHat9BqYI9LKg5C', 'BCA', 3),
(931, 'mahi', 'mahendranb457@gmail.com', '$2y$10$59hcOuvIgZ/rcwEcQyT2DuyUAvOBaBQ85nPCCHCWWNf7sb.OiB5EG', 'BCA', 3),
(932, 'maneesh skibbidy', 'mannesh@gmail.com', '$2y$10$URu74N1FM02czTwPOcR7UeThAzpwy5zqcAa0lKjTu1I/zco4PSKhq', 'BCA', 3),
(940, 'parvathy', 'parvathy7755@gmail.com', '$2y$10$NPiai.73sjvk5gmxxl56TebiHCbqLFai9iESZ3VNGomUkGUAb2PRO', 'BCA', 3),
(999, 'myaavi', 'aadhihero100@gmail.com', '$2y$10$y2ft0EN44Uc4ZK7xCjtT/O5RK6O/iNztS0hr/P5A263fvsXta0bZC', 'BBA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `election_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `student_id`, `candidate_id`, `election_id`, `timestamp`) VALUES
(69, 905, 61, 36, '2025-11-08 17:23:51'),
(70, 999, 61, 36, '2025-11-08 17:25:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `candidates_ibfk_2` (`election_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`election_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `regestration`
--
ALTER TABLE `regestration`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `election_id` (`election_id`),
  ADD KEY `votes_ibfk_2` (`candidate_id`),
  ADD KEY `votes_ibfk_1` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `regestration`
--
ALTER TABLE `regestration`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `candidates_ibfk_2` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `regestration` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_3` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
