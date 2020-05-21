-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 08:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skoolpartner`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendencerecord`
--

CREATE TABLE `attendencerecord` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `standard` varchar(255) NOT NULL,
  `rollNumber` varchar(255) NOT NULL,
  `classRoom` varchar(255) NOT NULL,
  `sessionYear` date DEFAULT NULL,
  `attendence` text NOT NULL,
  `reason` text NOT NULL,
  `currentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendencerecord`
--

INSERT INTO `attendencerecord` (`id`, `name`, `student_id`, `standard`, `rollNumber`, `classRoom`, `sessionYear`, `attendence`, `reason`, `currentDate`) VALUES
(332, 'Aadya Singh', 29, 'Standard-12', '1', 'Section-A', '2020-05-14', 'present', '', '2020-05-14'),
(333, 'Vaibhav Singh', 30, 'Standard-12', '2', 'Section-A', '2020-05-14', 'present', '', '2020-05-14'),
(334, 'Yash Singh', 31, 'Standard-12', '3', 'Section-A', '2020-05-14', 'present', '', '2020-05-14'),
(335, 'Sameer Kumar', 32, 'Standard-12', '4', 'Section-A', '2020-05-14', 'absent', 'No Information', '2020-05-14'),
(336, 'Suprabhat', 33, 'Standard-12', '5', 'Section-A', '2020-05-14', 'present', '', '2020-05-14'),
(337, 'Yash Rana', 34, 'Standard-12', '6', 'Section-A', '2020-05-14', 'present', '', '2020-05-14'),
(338, 'Sheshayani', 37, 'Standard-12', '7', 'Section-A', '2020-05-14', 'absent', 'Not Well', '2020-05-14'),
(339, 'Arjun Chauhan', 38, 'Standard-12', '8', 'Section-A', '2020-05-14', 'absent', 'Not Well', '2020-05-14'),
(340, 'Aadya Singh', 29, 'Standard-12', '1', 'Section-A', '2020-05-13', 'present', '', '2020-05-13'),
(341, 'Vaibhav Singh', 30, 'Standard-12', '2', 'Section-A', '2020-05-13', 'absent', 'No Information', '2020-05-13'),
(342, 'Yash Singh', 31, 'Standard-12', '3', 'Section-A', '2020-05-13', 'present', '', '2020-05-13'),
(343, 'Sameer Kumar', 32, 'Standard-12', '4', 'Section-A', '2020-05-13', 'present', '', '2020-05-13'),
(344, 'Suprabhat', 33, 'Standard-12', '5', 'Section-A', '2020-05-13', 'absent', 'No Information', '2020-05-13'),
(345, 'Yash Rana', 34, 'Standard-12', '6', 'Section-A', '2020-05-13', 'present', '', '2020-05-13'),
(346, 'Sheshayani', 37, 'Standard-12', '7', 'Section-A', '2020-05-13', 'present', '', '2020-05-13'),
(347, 'Arjun Chauhan', 38, 'Standard-12', '8', 'Section-A', '2020-05-13', 'absent', 'Not Well', '2020-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `message`, `sender`, `created_at`, `updated_at`) VALUES
(10, 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\n\n', 'Rohit Singh', '2020-05-18 01:49:22', '2020-05-18 01:49:22'),
(11, 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\n\n', 'Jai - Principal', '2020-05-18 01:49:31', '2020-05-18 07:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `standard` varchar(255) NOT NULL,
  `classRoom` varchar(255) DEFAULT NULL,
  `rollNumber` int(255) DEFAULT NULL,
  `identity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `sessionStart` int(11) DEFAULT NULL,
  `joiningDate` date DEFAULT NULL,
  `leavingDate` date DEFAULT NULL,
  `bloodGroup` varchar(255) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `aadharNumber` int(255) DEFAULT NULL,
  `motherTongue` varchar(255) NOT NULL,
  `medicalIssues` varchar(255) NOT NULL,
  `previousSchool` varchar(255) NOT NULL,
  `leavingReason` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `parentOccupation` varchar(255) NOT NULL,
  `parentIncom` varchar(255) NOT NULL,
  `parentEducation` varchar(255) NOT NULL,
  `languageKnown` varchar(255) NOT NULL,
  `parentEmail` varchar(255) NOT NULL,
  `parentPhone` varchar(10) DEFAULT NULL,
  `parentEmergencyCont` int(10) DEFAULT NULL,
  `temporaryAddress` varchar(255) NOT NULL,
  `permanentAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `avatar`, `name`, `gender`, `birthDate`, `standard`, `classRoom`, `rollNumber`, `identity`, `status`, `sessionStart`, `joiningDate`, `leavingDate`, `bloodGroup`, `phone`, `email`, `aadharNumber`, `motherTongue`, `medicalIssues`, `previousSchool`, `leavingReason`, `fatherName`, `motherName`, `parentOccupation`, `parentIncom`, `parentEducation`, `languageKnown`, `parentEmail`, `parentPhone`, `parentEmergencyCont`, `temporaryAddress`, `permanentAddress`) VALUES
(29, '', 'Aadya Singh', '', NULL, 'Standard-12', 'Section-A', 1, '1001', 'Active', 2020, '2020-01-01', NULL, '', NULL, '', NULL, '', '', '', '', 'Rohit Singh', 'Tanu Singh', 'Software Engg.', '13L/Annum', '', '', '', '7042449704', NULL, '', ''),
(30, '', 'Vaibhav Singh', '', NULL, 'Standard-12', 'Section-A', 2, '1002', 'Active', 2020, '2020-01-02', NULL, '', NULL, '', NULL, '', '', '', '', 'Amit Kumar', 'Rekha', 'Teacher', '8L/Annum', '', '', '', '7903830157', NULL, '', ''),
(31, '', 'Yash Singh', '', NULL, 'Standard-12', 'Section-A', 3, '1003', 'Active', 2020, '2020-01-02', NULL, '', NULL, '', NULL, '', '', '', '', 'Amit Kumar', 'Rekha', 'Teacher', '8L/Annum', '', '', '', '7903830157', NULL, '', ''),
(32, '', 'Sameer Kumar', '', NULL, 'Standard-12', 'Section-A', 4, '1004', 'Active', 2020, '2020-02-06', NULL, '', NULL, '', NULL, '', '', '', '', 'Aman Kumar', 'Venu Singh', 'Landlord', '3L/Anum', '', '', '', '8745678345', NULL, '', ''),
(33, '', 'Suprabhat', '', NULL, 'Standard-12', 'Section-A', 5, '1005', 'Active', 2020, '2020-02-05', NULL, '', NULL, '', NULL, '', '', '', '', 'Uday Kumar', 'Ragini', 'Landlord', '4L/Annum', '', '', '', '7894576984', NULL, '', ''),
(34, '', 'Yash Rana', '', NULL, 'Standard-12', 'Section-A', 6, '1006', 'Active', 2020, '2020-03-05', NULL, '', NULL, '', NULL, '', '', '', '', 'Vinay Rana', 'Swati Rana', 'BusinessMan', '45L/Annum', '', '', '', '6789654545', NULL, '', ''),
(37, '', 'Sheshayani', 'Female', NULL, 'Standard-12', 'Section-A', 7, '1007', 'Active', 2020, '2020-02-08', NULL, '', NULL, 'john.p@uback.com', NULL, '', '', '', '', 'Vishnu Dixit', 'Avantika Dixit', 'Air Force', '14L/Annum', '', '', '', '9784567934', NULL, '', ''),
(38, '', 'Arjun Chauhan', 'Male', NULL, 'Standard-12', 'Section-A', 8, '1008', 'Active', 2020, '2020-02-08', NULL, '', NULL, '', NULL, '', '', '', '', 'Suraj Chauhan', 'Vinita Chauhan', 'Government Job', '14L/Annum', '', '', '', '8756564564', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` text NOT NULL,
  `birthDate` date DEFAULT NULL,
  `bloodGroup` varchar(11) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `qualification` varchar(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `temporaryAddress` varchar(255) NOT NULL,
  `permanentAaddress` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `joiningDate` date DEFAULT NULL,
  `leavingDate` date DEFAULT NULL,
  `empCode` varchar(255) NOT NULL,
  `workingHour` int(2) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `bankAccount` int(255) NOT NULL,
  `IFSC` varchar(255) NOT NULL,
  `adharNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `motherTongue` varchar(255) NOT NULL,
  `medicalIssues` varchar(255) NOT NULL,
  `lastJob` varchar(255) NOT NULL,
  `languageKnown` varchar(255) NOT NULL,
  `emergencyContact` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `avatar`, `name`, `gender`, `birthDate`, `bloodGroup`, `phone`, `qualification`, `experience`, `temporaryAddress`, `permanentAaddress`, `position`, `joiningDate`, `leavingDate`, `empCode`, `workingHour`, `subject`, `status`, `bankAccount`, `IFSC`, `adharNumber`, `email`, `userName`, `password`, `motherTongue`, `medicalIssues`, `lastJob`, `languageKnown`, `emergencyContact`) VALUES
(26, '', 'Ashok Bhatia', '', NULL, '', '9865645645', '', 0, '', '', 'TGT Teacher', '2016-02-18', NULL, 'T001', 0, 'English', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null'),
(27, '', 'Parvez Alam', '', NULL, '', '9876454564', '', 0, '', '', 'PGT Teacher', '2020-05-01', NULL, 'T002', 0, 'Hindi', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null'),
(28, '', 'Tanu Singh', 'Female', NULL, '', '9958111428', '', 0, '', '', 'PGT Teacher', '2018-02-04', NULL, 'T003', 0, 'English', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null'),
(29, '', 'Abhishek Tiwari', 'Male', NULL, '', '8454353454', '', 0, '', '', 'PGT Teacher', '2019-06-06', NULL, 'T004', 0, 'Physics', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null'),
(30, '', 'Harsh Kumar', 'Male', NULL, '', '9786545465', '', 0, '', '', 'PGT Teacher', '2018-02-24', NULL, 'T005', 0, 'Computer', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null'),
(31, '', 'Rajan Malik', 'Male', NULL, '', '7895645435', '', 0, '', '', 'TGT Teacher', '2018-07-20', NULL, 'T006', 0, 'Mathematics', 'Active', 0, '', NULL, '', NULL, NULL, '', '', '', '', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `school`, `ref_id`) VALUES
(1, 'rohit', 's.rohitmac@gmail.com', '$2y$12$0rmZ3rtswltSJ6ipxDC0Teet5CmAGCcaYjtvjzC1yd8dqXGosMvWq', 'superAdmin', 'superAdmin', '0'),
(15, 'Aadya Singh', 'aadya_singh', '$2y$10$Z1zircFwTIqfF9gcc9QdgODkPLL76GrpgCDCIZnvDPb.pZM0930r.', 'Student', '', '1001'),
(16, 'Vaibhav Singh', 'Vaibhav2_Singh', '$2y$10$5/EzTZT41kvCGieS.lWlu.UeZmg2JdYiknEn77wohO9DkqGk9scpu', 'Student', '', '1002'),
(17, 'Yash Singh', 'yash_singh', '$2y$10$FDA1unavPgj2tMechxy3tuJEn65kveL6gQl7VeH6waGZt3JvblGZW', 'Student', '', '1003'),
(18, 'Rajan Malik', 'rajan_t006', '$2y$10$dPzPnARDJFx9glL3YKkclePxEHguJLqnI7t4WVoSZ9ob2h4xVkfXS', 'Teacher', '', 'T006'),
(19, 'Sameer Kumar', 'sameer_singh', '$2y$10$OHuLLk8O5D1Yan4jr0WTGuY4V/1KB50pyUKcwEV2nlSh7sNn17Hy2', 'Student', '', '1004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendencerecord`
--
ALTER TABLE `attendencerecord`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_STUDENT_ID` (`student_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendencerecord`
--
ALTER TABLE `attendencerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendencerecord`
--
ALTER TABLE `attendencerecord`
  ADD CONSTRAINT `FK_STUDENT_ID` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
