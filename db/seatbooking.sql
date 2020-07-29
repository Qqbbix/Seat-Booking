-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 08:47 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seatbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `seat_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `emp_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`seat_id`, `emp_code`) VALUES
('A1', 'AB12345');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `seat_status` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `seat_status`) VALUES
('A1', 'available'),
('A10', 'available'),
('A11', 'available'),
('A12', 'available'),
('A13', 'available'),
('A14', 'available'),
('A15', 'available'),
('A16', 'available'),
('A17', 'available'),
('A18', 'available'),
('A19', 'available'),
('A2', 'available'),
('A20', 'available'),
('A21', 'available'),
('A22', 'available'),
('A23', 'available'),
('A24', 'available'),
('A25', 'available'),
('A26', 'available'),
('A27', 'available'),
('A28', 'available'),
('A29', 'available'),
('A3', 'available'),
('A30', 'available'),
('A4', 'available'),
('A5', 'available'),
('A6', 'available'),
('A7', 'available'),
('A8', 'available'),
('A9', 'available'),
('B1', 'available'),
('B10', 'available'),
('B11', 'available'),
('B12', 'available'),
('B13', 'available'),
('B14', 'available'),
('B15', 'available'),
('B16', 'available'),
('B17', 'available'),
('B18', 'available'),
('B19', 'available'),
('B2', 'available'),
('B20', 'available'),
('B21', 'available'),
('B22', 'available'),
('B23', 'available'),
('B24', 'available'),
('B25', 'available'),
('B26', 'available'),
('B27', 'available'),
('B28', 'available'),
('B29', 'available'),
('B3', 'available'),
('B30', 'available'),
('B4', 'available'),
('B5', 'available'),
('B6', 'available'),
('B7', 'available'),
('B8', 'available'),
('B9', 'available'),
('C1', 'available'),
('C10', 'available'),
('C11', 'available'),
('C12', 'available'),
('C13', 'available'),
('C14', 'available'),
('C15', 'available'),
('C16', 'available'),
('C17', 'available'),
('C18', 'available'),
('C19', 'available'),
('C2', 'available'),
('C20', 'available'),
('C21', 'available'),
('C22', 'available'),
('C23', 'available'),
('C24', 'available'),
('C25', 'available'),
('C26', 'available'),
('C27', 'available'),
('C28', 'available'),
('C29', 'available'),
('C3', 'available'),
('C30', 'available'),
('C4', 'available'),
('C5', 'available'),
('C6', 'available'),
('C7', 'available'),
('C8', 'available'),
('C9', 'available'),
('D1', 'available'),
('D10', 'available'),
('D11', 'available'),
('D12', 'available'),
('D13', 'available'),
('D14', 'available'),
('D15', 'available'),
('D16', 'available'),
('D17', 'available'),
('D18', 'available'),
('D19', 'available'),
('D2', 'available'),
('D20', 'available'),
('D21', 'available'),
('D22', 'available'),
('D23', 'available'),
('D24', 'available'),
('D25', 'available'),
('D26', 'available'),
('D27', 'available'),
('D28', 'available'),
('D29', 'available'),
('D3', 'available'),
('D30', 'available'),
('D4', 'available'),
('D5', 'available'),
('D6', 'available'),
('D7', 'available'),
('D8', 'available'),
('D9', 'available'),
('E1', 'available'),
('E10', 'available'),
('E11', 'available'),
('E12', 'available'),
('E13', 'available'),
('E14', 'available'),
('E15', 'available'),
('E16', 'available'),
('E17', 'available'),
('E18', 'available'),
('E19', 'available'),
('E2', 'available'),
('E20', 'available'),
('E21', 'available'),
('E22', 'available'),
('E23', 'available'),
('E24', 'available'),
('E25', 'available'),
('E26', 'available'),
('E27', 'available'),
('E28', 'available'),
('E29', 'available'),
('E3', 'available'),
('E30', 'available'),
('E4', 'available'),
('E5', 'available'),
('E6', 'available'),
('E7', 'available'),
('E8', 'available'),
('E9', 'available'),
('F1', 'available'),
('F10', 'available'),
('F11', 'available'),
('F12', 'available'),
('F13', 'available'),
('F14', 'available'),
('F15', 'available'),
('F16', 'available'),
('F17', 'available'),
('F18', 'available'),
('F19', 'available'),
('F2', 'available'),
('F20', 'available'),
('F21', 'available'),
('F22', 'available'),
('F23', 'available'),
('F24', 'available'),
('F25', 'available'),
('F26', 'available'),
('F27', 'available'),
('F28', 'available'),
('F29', 'available'),
('F3', 'available'),
('F30', 'available'),
('F4', 'available'),
('F5', 'available'),
('F6', 'available'),
('F7', 'available'),
('F8', 'available'),
('F9', 'available'),
('G1', 'available'),
('G10', 'available'),
('G11', 'available'),
('G12', 'available'),
('G13', 'available'),
('G14', 'available'),
('G15', 'available'),
('G16', 'available'),
('G17', 'available'),
('G18', 'available'),
('G19', 'available'),
('G2', 'available'),
('G20', 'available'),
('G3', 'available'),
('G4', 'available'),
('G5', 'available'),
('G6', 'available'),
('G7', 'available'),
('G8', 'available'),
('G9', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`emp_code`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
