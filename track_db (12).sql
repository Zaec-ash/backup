-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2026 at 06:25 AM
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
-- Database: `track_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomplishment_report`
--

CREATE TABLE `accomplishment_report` (
  `id` int(255) NOT NULL,
  `approved_permit_id` int(255) NOT NULL,
  `permit_type` enum('on','off') NOT NULL,
  `actual_submission` date DEFAULT NULL,
  `pending_rating` int(11) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `ap_points` varchar(10) DEFAULT NULL,
  `ar_points` varchar(10) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accomplishment_report_files`
--

CREATE TABLE `accomplishment_report_files` (
  `id` int(11) NOT NULL,
  `accomplishment_report_id` int(11) NOT NULL,
  `file_type` enum('accomplishment_report','others') NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_objectives`
--

CREATE TABLE `activity_objectives` (
  `id` int(11) NOT NULL,
  `permit_id` int(255) NOT NULL,
  `permit_type` enum('on','off') NOT NULL,
  `objective_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_objectives`
--

INSERT INTO `activity_objectives` (`id`, `permit_id`, `permit_type`, `objective_text`) VALUES
(1, 1, 'on', 'asda'),
(2, 1, 'on', 'asdasdq'),
(3, 1, 'on', 'sadasd'),
(4, 2, 'on', 'asda11'),
(5, 2, 'on', 'asdasdqqw'),
(6, 2, 'on', 'sadasd'),
(7, 3, 'on', 'asda11'),
(8, 3, 'on', 'asdasdqqw'),
(9, 3, 'on', 'sadasd'),
(10, 3, 'off', '123123'),
(11, 3, 'off', '12312312'),
(12, 3, 'off', '123123'),
(13, 4, 'on', '12312'),
(14, 4, 'on', '1231'),
(15, 4, 'on', '12312'),
(16, 5, 'on', '12312'),
(17, 5, 'on', '312312'),
(18, 5, 'on', '213123'),
(19, 6, 'on', '12312'),
(20, 6, 'on', 'manga read'),
(21, 6, 'on', 'mangaing read'),
(22, 7, 'on', '12312'),
(23, 7, 'on', 'manga read'),
(24, 7, 'on', 'mangaing read'),
(25, 4, 'off', '123123'),
(26, 4, 'off', '231123'),
(27, 4, 'off', '31231'),
(28, 8, 'on', '3123123'),
(29, 8, 'on', '3123123'),
(30, 8, 'on', '3123'),
(31, 9, 'on', '3123123'),
(32, 9, 'on', '3123123'),
(33, 9, 'on', '3123'),
(34, 10, 'on', '123123'),
(35, 10, 'on', '213123'),
(36, 10, 'on', '213123'),
(37, 11, 'on', '3123123'),
(38, 11, 'on', '321312'),
(39, 11, 'on', '23123'),
(40, 12, 'on', '12312'),
(41, 12, 'on', '2131'),
(42, 12, 'on', '32');

-- --------------------------------------------------------

--
-- Table structure for table `activity_permit_offcampus`
--

CREATE TABLE `activity_permit_offcampus` (
  `id` int(255) NOT NULL,
  `pending_permit_no` varchar(255) NOT NULL,
  `activity_title` varchar(255) NOT NULL,
  `nature_of_activity` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `time_start` varchar(255) NOT NULL,
  `time_end` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `adviser` varchar(255) NOT NULL,
  `off_campus_address` varchar(255) NOT NULL,
  `transportation` text DEFAULT NULL,
  `safety_plan` text NOT NULL,
  `parent_consent` varchar(10) DEFAULT 'no',
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `acc_id` int(255) NOT NULL,
  `requirements_status` varchar(255) NOT NULL,
  `permit_status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_permit_offcampus`
--

INSERT INTO `activity_permit_offcampus` (`id`, `pending_permit_no`, `activity_title`, `nature_of_activity`, `start_date`, `end_date`, `time_start`, `time_end`, `venue`, `adviser`, `off_campus_address`, `transportation`, `safety_plan`, `parent_consent`, `time_created`, `acc_id`, `requirements_status`, `permit_status`) VALUES
(3, 'PPID-0004', 'WWADASDASDAS', 'Meeting/Fellowship', '2026-09-26', '2026-09-30', '11:11', '11:11', 'QEQWE', 'EQWEQWE', 'QWEQWE', 'EQWEQWE', 'EQWEQWE', 'yes', '2026-09-17 05:11:51', 51, 'submitted', 'archived'),
(4, 'PPID-0008', 'biayo', 'dasdasd', '2026-12-15', '2027-10-15', '15:12', '12:31', '312312', 'qweqweqweq', 'dweqwe', 'eqweqwe', 'eqweqw', 'yes', '2026-09-17 09:14:23', 49, 'submitted', 'archived');

-- --------------------------------------------------------

--
-- Table structure for table `activity_permit_oncampus`
--

CREATE TABLE `activity_permit_oncampus` (
  `id` int(255) NOT NULL,
  `pending_permit_no` varchar(255) NOT NULL,
  `activity_title` varchar(255) NOT NULL,
  `nature_of_activity` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `time_start` varchar(255) NOT NULL,
  `time_end` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `adviser` varchar(255) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `acc_id` int(255) NOT NULL,
  `requirements_status` varchar(255) NOT NULL,
  `permit_status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_permit_oncampus`
--

INSERT INTO `activity_permit_oncampus` (`id`, `pending_permit_no`, `activity_title`, `nature_of_activity`, `start_date`, `end_date`, `time_start`, `time_end`, `venue`, `adviser`, `time_created`, `acc_id`, `requirements_status`, `permit_status`) VALUES
(3, 'PPID-0003', 'sadas1', 'dsfsdf', '2026-09-05', '2026-09-05', '11:11', '11:11', '111', '11', '2026-09-17 05:11:51', 49, 'submitted', 'archived'),
(5, 'PPID-0005', 'Manga Reading part 21', 'Income Generating Activity', '2026-09-16', '2026-09-16', '15:12', '15:12', '3123123', '3123123', '2026-09-17 05:11:51', 51, 'submitted', 'archived'),
(6, 'PPID-0006', 'Manga Reading', 'Meeting/Fellowship', '2027-02-12', '2027-09-14', '00:31', '15:12', '3123123', 'qweqweqweqw', '2026-09-16 08:32:43', 57, '', 'pending'),
(7, 'PPID-0007', 'Manga Reading1', 'Meeting/Fellowship', '2027-10-12', '2027-11-14', '00:31', '15:12', '3123123', 'qweqweqweqw', '2026-09-17 05:11:51', 57, 'submitted', 'archived'),
(8, 'PPID-0009', '2312', 'Income Generating Activity', '2026-10-16', '2026-12-16', '12:31', '12:31', '32131231', 'eqweqweqweqw', '2026-09-17 09:24:12', 49, 'submitted', 'archived'),
(9, 'PPID-0010', '2312', 'Income Generating Activity', '2026-11-16', '2026-12-03', '12:31', '12:31', '32131231', 'eqweqweqweqw', '2026-09-17 09:26:38', 49, 'submitted', 'archived'),
(10, 'PPID-0011', '2312312312312dqwqweqwe', 'Campaign/Recruitment', '2026-12-14', '2026-12-26', '12:31', '14:13', '213123', 'eqweqweqw', '2026-09-17 09:44:28', 49, 'submitted', 'archived'),
(11, 'PPID-0012', '312312', 'Campaign/Recruitment', '2026-11-17', '2026-12-17', '15:12', '14:31', '3123123123', 'eqweqweqweqq', '2026-09-17 09:51:35', 49, 'submitted', 'archived'),
(12, 'PPID-0013', '312312', 'Income Generating Activity', '2030-10-17', '2031-11-19', '15:12', '12:31', '3123123123', 'EQWEWEQW', '2026-09-17 23:03:19', 49, 'submitted', 'archived');

-- --------------------------------------------------------

--
-- Table structure for table `approved_permits`
--

CREATE TABLE `approved_permits` (
  `id` int(255) NOT NULL,
  `permit_id` int(255) NOT NULL,
  `permit_type` enum('on','off') NOT NULL,
  `generated_permit_no` varchar(20) NOT NULL,
  `approval_date` date NOT NULL,
  `report_due` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archived_permits`
--

CREATE TABLE `archived_permits` (
  `id` int(11) NOT NULL,
  `permit_id` varchar(50) NOT NULL,
  `organization` varchar(255) NOT NULL DEFAULT 'Unknown',
  `campus_type` varchar(10) NOT NULL,
  `source_permit_id` int(11) DEFAULT NULL,
  `activity_title` varchar(255) NOT NULL DEFAULT '-',
  `nature_of_activity` varchar(255) NOT NULL DEFAULT '-',
  `start_date` varchar(50) NOT NULL DEFAULT '-',
  `end_date` varchar(50) NOT NULL DEFAULT '-',
  `start_time` varchar(50) NOT NULL DEFAULT '-',
  `end_time` varchar(50) NOT NULL DEFAULT '-',
  `venue` varchar(255) NOT NULL DEFAULT '-',
  `approval_date` date DEFAULT NULL,
  `report_due` varchar(50) NOT NULL DEFAULT '-',
  `actual_submission` varchar(50) NOT NULL DEFAULT 'Pending',
  `rating` varchar(20) NOT NULL DEFAULT '-',
  `ap_points` varchar(20) NOT NULL DEFAULT '0',
  `ar_points` varchar(20) NOT NULL DEFAULT '0',
  `remarks` text DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `archive_batch` varchar(50) NOT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_permits`
--

INSERT INTO `archived_permits` (`id`, `permit_id`, `organization`, `campus_type`, `source_permit_id`, `activity_title`, `nature_of_activity`, `start_date`, `end_date`, `start_time`, `end_time`, `venue`, `approval_date`, `report_due`, `actual_submission`, `rating`, `ap_points`, `ar_points`, `remarks`, `report_id`, `archive_batch`, `archived_by`, `archived_at`) VALUES
(1, '09-0002', 'cis', 'on', NULL, 'sadas1', 'dsfsdf', '2026-09-05', '2026-09-05', '11:11', '11:11', '111', '2026-09-05', '2026-09-15', '2026-09-05', '79', '0', '10', 'okiee', NULL, '2026-09-17_131151', 'Dharlin ASUNCIONes', '2026-09-17 05:11:51'),
(2, '09-0003', 'sipakpuso', 'on', NULL, 'Manga Reading part 21', 'Income Generating Activity', '2026-09-16', '2026-09-16', '15:12', '15:12', '3123123', '2026-09-16', '2026-09-25', '2026-09-16', '0', '0', '6', 'okieee', NULL, '2026-09-17_131151', 'Dharlin ASUNCIONes', '2026-09-17 05:11:51'),
(3, '09-0004', 'sipakpuso', 'off', NULL, 'WWADASDASDAS', 'Meeting/Fellowship', '2026-09-26', '2026-09-30', '11:11', '11:11', 'QEQWE', '2026-09-16', '2026-09-25', '2026-09-16', '99', '10', '6', 'nc one', NULL, '2026-09-17_131151', 'Dharlin ASUNCIONes', '2026-09-17 05:11:51'),
(4, '09-0005', 'CISeqweqw', 'on', NULL, 'Manga Reading1', 'Meeting/Fellowship', '2027-10-12', '2027-11-14', '00:31', '15:12', '3123123', '2026-09-16', '2026-09-25', 'Pending', '-', '0', '0', '', NULL, '2026-09-17_131151', 'Dharlin ASUNCIONes', '2026-09-17 05:11:51'),
(5, '09-0001', 'cis', 'off', 4, 'biayo', 'dasdasd', '2026-12-15', '2027-10-15', '15:12', '12:31', '312312', '2026-09-17', '2026-09-28', '2026-09-17', '0', '89', '8', 'okie ingat', NULL, '2026-09-17_171423', 'Dharlin ASUNCIONes', '2026-09-17 09:14:23'),
(6, '09-0001', 'cis', 'on', 8, '2312', 'Income Generating Activity', '2026-10-16', '2026-12-16', '12:31', '12:31', '32131231', '2026-09-17', '2026-09-28', '2026-09-17', '0', '29', '8', 'dsadsa', 61, '2026-09-17_172412', 'Dharlin ASUNCIONes', '2026-09-17 09:24:12'),
(7, '09-0001', 'cis', 'on', 9, '2312', 'Income Generating Activity', '2026-11-16', '2026-12-03', '12:31', '12:31', '32131231', '2026-09-17', '2026-09-28', '2026-09-17', '11', '60', '8', 'aseae', 63, '2026-09-17_172638', 'Dharlin ASUNCIONes', '2026-09-17 09:26:38'),
(8, '09-0001', 'cis', 'on', 10, '2312312312312dqwqweqwe', 'Campaign/Recruitment', '2026-12-14', '2026-12-26', '12:31', '14:13', '213123', '2026-09-17', '2026-09-28', '2026-09-17', '12', '88', '8', 'sw', 65, '2026-09-17_174428', 'Dharlin ASUNCIONes', '2026-09-17 09:44:28'),
(9, '09-0001', 'cis', 'on', 11, '312312', 'Campaign/Recruitment', '2026-11-17', '2026-12-17', '15:12', '14:31', '3123123123', '2026-09-17', '2026-09-28', '2026-09-17', '11', '61', '8', 'deqwe', 67, '2026-09-17_175135', 'Dharlin ASUNCIONes', '2026-09-17 09:51:35'),
(10, '09-0001', 'cis', 'on', 12, '312312', 'Income Generating Activity', '2030-10-17', '2031-11-19', '15:12', '12:31', '3123123123', '2026-09-18', '2026-09-29', '2026-09-18', '1', '1490', '8', 'QWEQW', 69, '2026-09-17 to 2026-09-18', 'Dharlin ASUNCIONes', '2026-09-17 23:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `archived_permit_files`
--

CREATE TABLE `archived_permit_files` (
  `id` int(11) NOT NULL,
  `archived_permit_id` int(11) NOT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_permit_files`
--

INSERT INTO `archived_permit_files` (`id`, `archived_permit_id`, `file_type`, `file_path`, `original_filename`) VALUES
(1, 9, 'accomplishment_report', 'uploads/accomplishment_reports/09-0001_Chapter_1_IT129.pdf', 'Chapter 1 IT129.pdf'),
(2, 9, 'others', 'uploads/accomplishment_reports/09-0001_Chapter_1_IT129.pdf', 'Chapter 1 IT129.pdf'),
(3, 10, 'accomplishment_report', 'uploads/accomplishment_reports/09-0001_Chapter_1_IT129.pdf', 'Chapter 1 IT129.pdf'),
(4, 10, 'others', 'uploads/accomplishment_reports/09-0001_Chapter_1_IT129.pdf', 'Chapter 1 IT129.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `email` varchar(255) NOT NULL,
  `failed_count` int(11) NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `last_attempt_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `org_documents`
--

CREATE TABLE `org_documents` (
  `id` int(11) NOT NULL,
  `org_id` int(255) NOT NULL,
  `doc_type` enum('LOA','AAF','POBIC','TAP','RCAB') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `org_documents`
--

INSERT INTO `org_documents` (`id`, `org_id`, `doc_type`, `file_path`, `uploaded_at`) VALUES
(31, 6, 'LOA', '1788606682_6a9bf8daa73e3.png', '2026-09-05 11:11:22'),
(32, 6, 'AAF', '1788606682_6a9bf8daa8008.png', '2026-09-05 11:11:22'),
(33, 6, 'POBIC', '1788606682_6a9bf8daa8bdc.png', '2026-09-05 11:11:22'),
(34, 6, 'TAP', '1788606682_6a9bf8daa974e.png', '2026-09-05 11:11:22'),
(35, 6, 'RCAB', '1788606682_6a9bf8daaa83b.png', '2026-09-05 11:11:22'),
(56, 11, 'LOA', '1789546145_6aaa4ea1ba52e.pdf', '2026-09-16 08:09:06'),
(57, 11, 'AAF', '1789546145_6aaa4ea1bbced.pdf', '2026-09-16 08:09:06'),
(58, 11, 'POBIC', '1789546145_6aaa4ea1bcdfe.pdf', '2026-09-16 08:09:06'),
(59, 11, 'TAP', '1789546145_6aaa4ea1bdc5d.pdf', '2026-09-16 08:09:06'),
(60, 11, 'RCAB', '1789546145_6aaa4ea1beb01.pdf', '2026-09-16 08:09:06'),
(61, 8, 'LOA', '1789603587_6aab2f0387127.pdf', '2026-09-17 00:06:27'),
(62, 8, 'AAF', '1789603587_6aab2f038800d.pdf', '2026-09-17 00:06:27'),
(63, 8, 'POBIC', '1789603587_6aab2f0388cf4.pdf', '2026-09-17 00:06:27'),
(64, 8, 'TAP', '1789603587_6aab2f0389778.pdf', '2026-09-17 00:06:27'),
(65, 8, 'RCAB', '1789603587_6aab2f038a4ff.pdf', '2026-09-17 00:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `org_table`
--

CREATE TABLE `org_table` (
  `id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `org_type` varchar(255) NOT NULL,
  `org_description` varchar(255) DEFAULT NULL,
  `Institution_description` varchar(255) DEFAULT NULL,
  `org_status` varchar(100) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `org_table`
--

INSERT INTO `org_table` (`id`, `acc_id`, `email`, `type`, `org_name`, `first_name`, `last_name`, `middle_name`, `contact_no`, `org_type`, `org_description`, `Institution_description`, `org_status`, `comment`) VALUES
(6, 49, 'zaecramirez@gmail.com', 'CF', 'cis', 'Zaec', 'Ramirez', 'Valerio', '0912-122-1121', 'existing', '', '', 'Probationary', NULL),
(8, 51, 'zaecramirez1@gmail.com', 'CIS', 'sipakpuso', 'Zaec', 'Rami', 'Valerio', '0931-231-2312', 'existing', 'qwqwe', 'qweqweqw', 'Full Recognition', NULL),
(11, 57, '3123123123@gmail.com', 'CF', 'CISeqweqw', 'eqweqwe', 'qweqwe', 'asda', '0931-231-2312', 'existing', '', '', 'Conditional', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_otps`
--

CREATE TABLE `password_otps` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_otps`
--

INSERT INTO `password_otps` (`id`, `email`, `otp_code`, `expires_at`, `used`, `created_at`) VALUES
(1, 'zaecramirez@gmail.com', '549992', '2026-09-17 11:34:13', 1, '2026-09-16 23:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `permit_cancellations`
--

CREATE TABLE `permit_cancellations` (
  `id` int(11) NOT NULL,
  `approved_permit_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `cancelled_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permit_requirement_files_offcampus`
--

CREATE TABLE `permit_requirement_files_offcampus` (
  `id` int(255) NOT NULL,
  `permit_id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `doc_label` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `stored_filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permit_requirement_files_offcampus`
--

INSERT INTO `permit_requirement_files_offcampus` (`id`, `permit_id`, `acc_id`, `doc_type`, `doc_label`, `original_filename`, `stored_filename`, `uploaded_at`) VALUES
(5, 3, 51, 'proposal', 'Proposal', 'UNIX_Presentation.pptx.pdf', 'WWADASDASDAS_UNIX_Presentationpptx_20260916_4e2838.pdf', '2026-09-16 04:00:05'),
(6, 3, 51, 'others_1', 'Other', 'RSO Activity Design Template.docx', 'WWADASDASDAS_RSO-Activity-Design-Template_20260910_71f3ff.docx', '2026-09-10 03:41:27'),
(11, 4, 49, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', 'biayo_Chapter-1-IT129_20260917_dfe3ef.pdf', '2026-09-17 09:03:09'),
(12, 4, 49, 'others_1', 'Other', 'Chapter 1 IT129.pdf', 'biayo_Chapter-1-IT129_20260917_36b46d.pdf', '2026-09-17 09:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `permit_requirement_files_oncampus`
--

CREATE TABLE `permit_requirement_files_oncampus` (
  `id` int(255) NOT NULL,
  `permit_id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `doc_label` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `stored_filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permit_requirement_files_oncampus`
--

INSERT INTO `permit_requirement_files_oncampus` (`id`, `permit_id`, `acc_id`, `doc_type`, `doc_label`, `original_filename`, `stored_filename`, `uploaded_at`) VALUES
(3, 3, 49, 'proposal', 'Proposal', 'Ramirez, Zaec Ahrem Reaven V. - Laboratory Exercise  #4 Installing Windows Server.docx', 'sadas1_Ramirez-Zaec-Ahrem-Reaven-V---Laboratory-Exercise-4-Installing-Windows-Server_20260905_9a0353.docx', '2026-09-05 05:36:40'),
(4, 3, 49, 'others_1', 'Other', 'Screenshot02_Hostname.png', 'sadas1_Screenshot02_Hostname_20260905_1e28a1.png', '2026-09-05 05:36:41'),
(7, 5, 51, 'proposal', 'Proposal', 'Screenshot 2 NTFS Permissions – Accounting_20260828131929.png', 'Manga-Reading-part-21_Screenshot-2-NTFS-Permissions--Accounting_20260828131929_20260916_dea6b3.png', '2026-09-16 01:59:38'),
(8, 5, 51, 'others_1', 'Other', 'Screenshot 2 NTFS Permissions – Accounting_20260828131929.png', 'Manga-Reading-part-21_Screenshot-2-NTFS-Permissions--Accounting_20260828131929_20260916_761153.png', '2026-09-16 01:59:38'),
(9, 7, 57, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', 'Manga-Reading1_Chapter-1-IT129_20260916_deb996.pdf', '2026-09-16 08:44:27'),
(10, 7, 57, 'others_1', 'Other', 'Chapter 1 IT129.pdf', 'Manga-Reading1_Chapter-1-IT129_20260916_5dd1df.pdf', '2026-09-16 08:44:27'),
(11, 7, 57, 'others_2', 'Other', 'MODULE 2_IT129 (1).pdf', 'Manga-Reading1_MODULE-2_IT129-1_20260916_2b4349.pdf', '2026-09-16 08:44:27'),
(12, 7, 57, 'others_3', 'Other', 'Chapter 3_IT129 (1).pdf', 'Manga-Reading1_Chapter-3_IT129-1_20260916_2c745f.pdf', '2026-09-16 08:44:27'),
(13, 8, 49, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', '2312_Chapter-1-IT129_20260917_2b999c.pdf', '2026-09-17 09:22:33'),
(14, 8, 49, 'others_1', 'Other', 'Chapter 1 IT129.pdf', '2312_Chapter-1-IT129_20260917_3dcce7.pdf', '2026-09-17 09:22:33'),
(15, 9, 49, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', '2312_Chapter-1-IT129_20260917_f7353a.pdf', '2026-09-17 09:25:24'),
(16, 9, 49, 'others_1', 'Other', 'Chapter 1 IT129.pdf', '2312_Chapter-1-IT129_20260917_f64873.pdf', '2026-09-17 09:25:24'),
(17, 10, 49, 'proposal', 'Proposal', 'MODULE 2_IT129 (1).pdf', '2312312312312dqwqweqwe_MODULE-2_IT129-1_20260917_26e528.pdf', '2026-09-17 09:42:08'),
(18, 10, 49, 'others_1', 'Other', 'MODULE 2_IT129 (1).pdf', '2312312312312dqwqweqwe_MODULE-2_IT129-1_20260917_d4bc24.pdf', '2026-09-17 09:42:08'),
(19, 11, 49, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', '312312_Chapter-1-IT129_20260917_ca6a2c.pdf', '2026-09-17 09:50:22'),
(20, 11, 49, 'others_1', 'Other', 'Chapter 1 IT129.pdf', '312312_Chapter-1-IT129_20260917_c4a6c0.pdf', '2026-09-17 09:50:22'),
(21, 12, 49, 'proposal', 'Proposal', 'Chapter 1 IT129.pdf', '312312_Chapter-1-IT129_20260918_784aa7.pdf', '2026-09-17 23:01:50'),
(22, 12, 49, 'others_1', 'Other', 'Chapter 1 IT129.pdf', '312312_Chapter-1-IT129_20260918_c8e839.pdf', '2026-09-17 23:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `staff_table`
--

CREATE TABLE `staff_table` (
  `id` int(255) NOT NULL,
  `acc_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `staff_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_table`
--

INSERT INTO `staff_table` (`id`, `acc_id`, `email`, `contact_no`, `first_name`, `last_name`, `middle_name`, `staff_id`) VALUES
(5, 25, 'admin@bsu.edu.ph', '0931-231-2313', 'Dharlin', 'ASUNCIONes', 'hakdog', 12312),
(7, 53, 'zaecramirez@bsu.edu.ph', '0', 'Zaec', 'Ramirez', '', 2312312),
(8, 55, 'zaecramirez12@bsu.edu.ph', '0', 'ZAEC', 'RAMIREZ', 'asda', 123123),
(9, 56, 'zaecramirez112@bsu.edu.ph', '0931-231-2312', 'ZAEC', 'RAMIREZ', 'eqwe', 123213),
(10, 58, 'zaecramirez121@bsu.edu.ph', '0912-312-3123', 'ZAECa', 'RAMIREZa', 'dasdas', 111111);

-- --------------------------------------------------------

--
-- Table structure for table `track_acc`
--

CREATE TABLE `track_acc` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `track_acc`
--

INSERT INTO `track_acc` (`id`, `email`, `password`, `role`, `status`) VALUES
(25, 'admin@bsu.edu.ph', '$2y$10$O3uDXLmVc1vukMmTtAlMGeNjP6g30M291M53ie1f3AV48MWu3/aZy', 'admin', 'able'),
(49, 'zaecramirez@gmail.com', '$2y$10$UFMCrWxxSGPjfvYAr37dQOmdMYW0eAB1vuI7QoRLhJzkBaqqGf.l.', 'organization', 'able'),
(51, 'zaecramirez1@gmail.com', '$2y$10$2fZ/D0ao3HIfxluZM5nqguK/2Ngx.wyJGBg55EK4ny0Df5/Pnb7Gq', 'organization', 'able'),
(53, 'zaecramirez@bsu.edu.ph', '$2y$10$M12S/PAtImgrEa4.DRstZeHgOTbQbHL3sDWAxSruAaEH.OVhKCn56', 'staff', 'able'),
(55, 'zaecramirez12@bsu.edu.ph', '$2y$10$BqxvMecp8jVqn2Z4QNWO0.1V.5c7P3X2ja4NKLCtwH83t2IpLIADW', 'staff', 'disabled'),
(56, 'zaecramirez112@bsu.edu.ph', '$2y$10$/9CMMiHwldjPk/kiXGMveeDfAwk5HjFGLlarXkvBwOn9pCwPcvbk2', 'staff', 'able'),
(57, '3123123123@gmail.com', '$2y$10$uN77THrCsseIjiMGvvzateQYgXvSKjdEKjet9FsVPo/x8SugRB9WS', 'organization', 'Renewal'),
(58, 'zaecramirez121@bsu.edu.ph', '$2y$10$w3cXesLLbPlTe4t4YfCvQObLDxFzrG.D2ixQ8LuOOdJB4VMMLAOLS', 'staff', 'Disabled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplishment_report`
--
ALTER TABLE `accomplishment_report`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `approved_permit_unique` (`approved_permit_id`);

--
-- Indexes for table `accomplishment_report_files`
--
ALTER TABLE `accomplishment_report_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accomplishment_report_id` (`accomplishment_report_id`);

--
-- Indexes for table `activity_objectives`
--
ALTER TABLE `activity_objectives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_permit_lookup` (`permit_id`,`permit_type`);

--
-- Indexes for table `activity_permit_offcampus`
--
ALTER TABLE `activity_permit_offcampus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `activity_permit_oncampus`
--
ALTER TABLE `activity_permit_oncampus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `approved_permits`
--
ALTER TABLE `approved_permits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permit_lookup` (`permit_id`,`permit_type`);

--
-- Indexes for table `archived_permits`
--
ALTER TABLE `archived_permits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_archive_batch` (`archive_batch`),
  ADD KEY `idx_permit_id` (`permit_id`),
  ADD KEY `idx_source_permit` (`source_permit_id`,`campus_type`);

--
-- Indexes for table `archived_permit_files`
--
ALTER TABLE `archived_permit_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_archived_permit_id` (`archived_permit_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `org_documents`
--
ALTER TABLE `org_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `org_doc_unique` (`org_id`,`doc_type`);

--
-- Indexes for table `org_table`
--
ALTER TABLE `org_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `password_otps`
--
ALTER TABLE `password_otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `permit_cancellations`
--
ALTER TABLE `permit_cancellations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permit_cancellation_unique` (`approved_permit_id`);

--
-- Indexes for table `permit_requirement_files_offcampus`
--
ALTER TABLE `permit_requirement_files_offcampus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permit_doc_unique` (`permit_id`,`doc_type`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `permit_requirement_files_oncampus`
--
ALTER TABLE `permit_requirement_files_oncampus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permit_doc_unique` (`permit_id`,`doc_type`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indexes for table `staff_table`
--
ALTER TABLE `staff_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_table_ibfk_1` (`acc_id`);

--
-- Indexes for table `track_acc`
--
ALTER TABLE `track_acc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomplishment_report`
--
ALTER TABLE `accomplishment_report`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `accomplishment_report_files`
--
ALTER TABLE `accomplishment_report_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `activity_objectives`
--
ALTER TABLE `activity_objectives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `activity_permit_offcampus`
--
ALTER TABLE `activity_permit_offcampus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity_permit_oncampus`
--
ALTER TABLE `activity_permit_oncampus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `approved_permits`
--
ALTER TABLE `approved_permits`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `archived_permits`
--
ALTER TABLE `archived_permits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `archived_permit_files`
--
ALTER TABLE `archived_permit_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `org_documents`
--
ALTER TABLE `org_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `org_table`
--
ALTER TABLE `org_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `password_otps`
--
ALTER TABLE `password_otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permit_cancellations`
--
ALTER TABLE `permit_cancellations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permit_requirement_files_offcampus`
--
ALTER TABLE `permit_requirement_files_offcampus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permit_requirement_files_oncampus`
--
ALTER TABLE `permit_requirement_files_oncampus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staff_table`
--
ALTER TABLE `staff_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `track_acc`
--
ALTER TABLE `track_acc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomplishment_report`
--
ALTER TABLE `accomplishment_report`
  ADD CONSTRAINT `accomplishment_report_ibfk_1` FOREIGN KEY (`approved_permit_id`) REFERENCES `approved_permits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `accomplishment_report_files`
--
ALTER TABLE `accomplishment_report_files`
  ADD CONSTRAINT `accomplishment_report_files_ibfk_1` FOREIGN KEY (`accomplishment_report_id`) REFERENCES `accomplishment_report` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activity_permit_offcampus`
--
ALTER TABLE `activity_permit_offcampus`
  ADD CONSTRAINT `activity_permit_offcampus_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_permit_oncampus`
--
ALTER TABLE `activity_permit_oncampus`
  ADD CONSTRAINT `activity_permit_oncampus_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`);

--
-- Constraints for table `archived_permit_files`
--
ALTER TABLE `archived_permit_files`
  ADD CONSTRAINT `fk_archived_permit_files_permit` FOREIGN KEY (`archived_permit_id`) REFERENCES `archived_permits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `org_documents`
--
ALTER TABLE `org_documents`
  ADD CONSTRAINT `fk_org_docs_org` FOREIGN KEY (`org_id`) REFERENCES `org_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `org_table`
--
ALTER TABLE `org_table`
  ADD CONSTRAINT `org_table_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permit_cancellations`
--
ALTER TABLE `permit_cancellations`
  ADD CONSTRAINT `fk_permit_cancellations_approved_permit` FOREIGN KEY (`approved_permit_id`) REFERENCES `approved_permits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permit_requirement_files_offcampus`
--
ALTER TABLE `permit_requirement_files_offcampus`
  ADD CONSTRAINT `prfoff_acc_fk` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prfoff_permit_fk` FOREIGN KEY (`permit_id`) REFERENCES `activity_permit_offcampus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permit_requirement_files_oncampus`
--
ALTER TABLE `permit_requirement_files_oncampus`
  ADD CONSTRAINT `prfo_acc_fk` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prfo_permit_fk` FOREIGN KEY (`permit_id`) REFERENCES `activity_permit_oncampus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_table`
--
ALTER TABLE `staff_table`
  ADD CONSTRAINT `staff_table_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `track_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
