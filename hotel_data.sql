-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 02:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(10) NOT NULL,
  `Label` varchar(20) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `Label`, `Price`) VALUES
(1, 'Sigle', 1000),
(2, 'Double', 1500),
(3, 'Family', 2000),
(4, 'Suite', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuestID` varchar(20) NOT NULL,
  `GuestFirstName` varchar(10) NOT NULL,
  `GuestLastName` varchar(10) NOT NULL,
  `GuestPhone` varchar(15) NOT NULL,
  `GuestCity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuestID`, `GuestFirstName`, `GuestLastName`, `GuestPhone`, `GuestCity`) VALUES
('201623', 'Gayleen', 'Gumere', '09301629874', 'Pasay'),
('201658', 'Carla', 'Calub', '09462581469', 'Makati'),
('201732', 'Jay', 'Vic', '09684419934', 'Marikina'),
('211589', 'Gemson', 'Empiales', '09321564789', 'San Juan'),
('212306', 'Audrey', 'Herrera', '09493212456', 'Quezon'),
('212548', 'Jake', 'Salvador', '09090116449', 'Quezon'),
('214563', 'Germaine', 'Indias', '09461252369', 'Navotas'),
('214569', 'Loiz', 'Barrios', '09321564563', 'Manila'),
('215689', 'Kayla', 'Ferrer', '09194567896', 'Mandaluyong');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `RecervId` int(10) NOT NULL,
  `GuestId` int(10) NOT NULL,
  `RoomNo` varchar(10) NOT NULL,
  `DateIn` date NOT NULL,
  `DateOut` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`RecervId`, `GuestId`, `RoomNo`, `DateIn`, `DateOut`) VALUES
(1, 201732, '1', '2022-10-30', '2022-11-05'),
(2, 212548, '5', '2022-10-30', '2022-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomId` int(5) NOT NULL,
  `RoomType` int(5) NOT NULL,
  `RoomPhone` varchar(15) NOT NULL,
  `RoomStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomId`, `RoomType`, `RoomPhone`, `RoomStatus`) VALUES
(1, 1, '0114', 'Busy'),
(2, 1, '0115', 'Free'),
(3, 1, '0116', 'Free'),
(4, 1, '0117', 'Free'),
(5, 2, '1114', 'Busy'),
(6, 2, '1115', 'Free'),
(7, 2, '0116', 'Free'),
(8, 3, '1117', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 12345),
(2, 'Kayla@21', 256985),
(3, 'Carla@20', 159636),
(4, 'JeraldV@22', 1805897);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`RecervId`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `RecervId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
