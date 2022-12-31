-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 20 Ιουν 2021 στις 01:09:57
-- Έκδοση διακομιστή: 10.4.19-MariaDB
-- Έκδοση PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `hotel1`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `clients`
--

CREATE TABLE `clients` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Name` tinytext NOT NULL,
  `Last_Name` tinytext NOT NULL,
  `Birth_date` date NOT NULL,
  `ID` tinytext NOT NULL,
  `ID_number` tinytext NOT NULL,
  `ID_type` tinytext NOT NULL,
  `Issuing_Authority` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `clients`
--

INSERT INTO `clients` (`NFC_ID`, `Name`, `Last_Name`, `Birth_date`, `ID`, `ID_number`, `ID_type`, `Issuing_Authority`) VALUES
(1, 'Kris', 'Koutsi', '2000-12-22', 'ID', 'AA 000000', 'AT', 'T.A KYPSELIS'),
(2, 'Maria', 'Athanasiou', '2000-01-01', 'ID', 'AA 000001', 'AT', 'T.A KOZANIS'),
(3, 'Eleni', 'Georgiou', '2000-01-02', 'ID', 'AA 000002', 'AT', 'T.A GALATSIOY'),
(4, 'Georgios', 'Georgiou', '2000-01-03', 'ID', 'AA 000003', 'AT', 'T.A PATRAS'),
(5, 'Nikolaos', 'Thanou', '1998-03-30', 'ID', 'AK 406394', 'AT', 'T.A PERISTERIOY');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `email`
--

CREATE TABLE `email` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `email`
--

INSERT INTO `email` (`NFC_ID`, `email`) VALUES
(1, 'kriskoutsi@gmail.com'),
(1, 'kriskoutsi@hotmail.com'),
(2, 'mariaath@gmail.com'),
(3, 'elenigeo@hotmail.com'),
(3, 'elgeo47@hotmail.com'),
(4, 'georgiou23@yahoo.gr'),
(5, 'nikthanoy@gmail.com');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `get_services`
--

CREATE TABLE `get_services` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Service_ID` tinyint(1) NOT NULL CHECK (`Service_ID` < 7 and `Service_ID` > 0),
  `Charge_date&time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `get_services`
--

INSERT INTO `get_services` (`NFC_ID`, `Service_ID`, `Charge_date&time`) VALUES
(1, 1, '2021-02-20 12:00:00'),
(1, 1, '2021-02-21 11:51:20'),
(1, 1, '2021-02-22 11:51:20'),
(2, 2, '2021-05-22 20:12:40'),
(3, 2, '2020-08-05 17:42:49'),
(3, 4, '2020-08-03 19:23:24'),
(4, 5, '2020-09-19 11:51:20'),
(5, 6, '2021-01-19 06:10:20');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `has_access`
--

CREATE TABLE `has_access` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Location_ID` smallint(3) NOT NULL CHECK (`Location_ID` > 0 and `Location_ID` < 600),
  `Start_date&time` datetime NOT NULL,
  `End_date&time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `has_access`
--

INSERT INTO `has_access` (`NFC_ID`, `Location_ID`, `Start_date&time`, `End_date&time`) VALUES
(1, 1, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 2, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 3, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 4, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 5, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 6, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 7, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 8, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 9, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 10, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 11, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 12, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 13, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 14, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 15, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 16, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 17, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 18, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 19, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 20, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 21, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 22, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 23, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 24, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 25, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 26, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 27, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 28, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 29, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 30, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 31, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 32, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 33, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 34, '2021-02-19 12:00:00', '2021-02-25 12:00:00'),
(1, 101, '2021-02-18 12:00:00', '2021-02-25 12:00:00'),
(2, 1, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 2, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 3, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 4, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 5, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 6, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 7, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 8, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 9, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 10, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 11, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 12, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 13, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 14, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 15, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 16, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 17, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 18, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 19, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 20, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(2, 106, '2021-05-18 12:00:00', '2021-05-24 12:00:00'),
(3, 31, '2020-08-03 12:30:00', '2020-08-04 12:30:00'),
(3, 32, '2020-08-03 12:30:00', '2020-08-04 12:30:00'),
(3, 33, '2020-08-03 12:30:00', '2020-08-04 12:30:00'),
(3, 34, '2020-08-03 12:30:00', '2020-08-04 12:30:00'),
(3, 207, '2020-08-02 12:00:00', '2020-08-07 12:00:00'),
(4, 21, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 22, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 23, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 24, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 25, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 26, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 27, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 28, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 29, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 30, '2020-09-18 12:00:00', '2020-09-20 12:00:00'),
(4, 305, '2020-09-17 12:00:00', '2020-09-28 12:00:00'),
(5, 11, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 12, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 13, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 14, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 15, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 16, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 17, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 18, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 19, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 20, '2021-01-15 11:00:00', '2021-01-17 11:00:00'),
(5, 503, '2021-01-13 12:00:00', '2021-02-20 12:00:00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `locations`
--

CREATE TABLE `locations` (
  `Location_ID` smallint(3) NOT NULL CHECK (`Location_ID` > 0 and `Location_ID` < 600),
  `Location_name` tinytext NOT NULL,
  `Beds#` tinyint(1) DEFAULT NULL CHECK (`Beds#` > -1 and `Beds#` < 5),
  `Location_desc` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `locations`
--

INSERT INTO `locations` (`Location_ID`, `Location_name`, `Beds#`, `Location_desc`) VALUES
(1, 'Bar', 0, 'Ground'),
(2, 'Bar', 0, 'Ground'),
(3, 'Bar', 0, 'Ground'),
(4, 'Bar', 0, 'Ground'),
(5, 'Bar', 0, 'Ground'),
(6, 'Bar', 0, 'Ground'),
(7, 'Restaurant', 0, 'Ground'),
(8, 'Restaurant', 0, 'Ground'),
(9, 'Restaurant', 0, 'Ground'),
(10, 'Restaurant', 0, 'Ground'),
(11, 'Meeting room', 0, 'Ground'),
(12, 'Meeting room', 0, 'Ground'),
(13, 'Meeting room', 0, 'Ground'),
(14, 'Meeting room', 0, 'Ground'),
(15, 'Meeting room', 0, 'Ground'),
(16, 'Meeting room', 0, 'Ground'),
(17, 'Meeting room', 0, 'Ground'),
(18, 'Meeting room', 0, 'Ground'),
(19, 'Meeting room', 0, 'Ground'),
(20, 'Meeting room', 0, 'Ground'),
(21, 'Sauna', 0, 'Ground'),
(22, 'Sauna', 0, 'Ground'),
(23, 'Sauna', 0, 'Ground'),
(24, 'Sauna', 0, 'Ground'),
(25, 'Sauna', 0, 'Ground'),
(26, 'Sauna', 0, 'Ground'),
(27, 'Sauna', 0, 'Ground'),
(28, 'Sauna', 0, 'Ground'),
(29, 'Sauna', 0, 'Ground'),
(30, 'Sauna', 0, 'Ground'),
(31, 'Gym', 0, 'Ground'),
(32, 'Gym', 0, 'Ground'),
(33, 'Gym', 0, 'Ground'),
(34, 'Gym', 0, 'Ground'),
(35, 'Hairdressers', 0, 'Ground'),
(101, 'Room', 1, '1st, North'),
(102, 'Room', 1, '1st, North'),
(103, 'Room', 1, '1st, South'),
(104, 'Room', 1, '1st, South'),
(105, 'Room', 1, '1st, West'),
(106, 'Room', 1, '1st, West'),
(107, 'Room', 1, '1st, East'),
(108, 'Room', 1, '1st, East'),
(201, 'Room', 1, '2nd, North'),
(202, 'Room', 1, '2nd, North'),
(203, 'Room', 1, '2nd, South'),
(204, 'Room', 1, '2nd, South'),
(205, 'Room', 1, '2nd, West'),
(206, 'Room', 1, '2nd, West'),
(207, 'Room', 1, '2nd, East'),
(208, 'Room', 1, '2nd, East'),
(301, 'Room', 1, '3rd, North'),
(302, 'Room', 1, '3rd, North'),
(303, 'Room', 1, '3rd, South'),
(304, 'Room', 1, '3rd, South'),
(305, 'Room', 1, '3rd, West'),
(306, 'Room', 1, '3rd, West'),
(307, 'Room', 1, '3rd, East'),
(308, 'Room', 1, '3rd, East'),
(401, 'Room', 1, '4th, North'),
(402, 'Room', 1, '4th, North'),
(403, 'Room', 1, '4th, South'),
(404, 'Room', 1, '4th, South'),
(405, 'Room', 1, '4th, West'),
(406, 'Room', 1, '4th, West'),
(407, 'Room', 1, '4th, East'),
(408, 'Room', 1, '4th, East'),
(501, 'Room', 1, '5th, North'),
(502, 'Room', 1, '5th, North'),
(503, 'Room', 1, '5th, South'),
(504, 'Room', 1, '5th, South'),
(505, 'Room', 1, '5th, West'),
(506, 'Room', 1, '5th, West'),
(507, 'Room', 1, '5th, East'),
(508, 'Room', 1, '5th, East');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `phone_number`
--

CREATE TABLE `phone_number` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Phone_Number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `phone_number`
--

INSERT INTO `phone_number` (`NFC_ID`, `Phone_Number`) VALUES
(1, 6900000000),
(1, 6900000001),
(2, 6900000002),
(2, 6900000003),
(3, 6900000004),
(4, 6900000005),
(5, 6900000007);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `provided`
--

CREATE TABLE `provided` (
  `Service_ID` tinyint(1) NOT NULL CHECK (`Service_ID` < 7 and `Service_ID` > 0),
  `Location_ID` smallint(3) NOT NULL CHECK (`Location_ID` > 0 and `Location_ID` < 600)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `provided`
--

INSERT INTO `provided` (`Service_ID`, `Location_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 35),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `services`
--

CREATE TABLE `services` (
  `Service_ID` tinyint(1) NOT NULL CHECK (`Service_ID` < 7 and `Service_ID` > 0),
  `Service_desc` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `services`
--

INSERT INTO `services` (`Service_ID`, `Service_desc`) VALUES
(1, 'Drinks at the bar'),
(2, 'Food and drinks at the restaurant'),
(3, 'Hairdressing services'),
(4, 'Use of gym'),
(5, 'Use of sauna'),
(6, 'Use of meeting room');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `services_without_reg`
--

CREATE TABLE `services_without_reg` (
  `Service_ID` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `services_without_reg`
--

INSERT INTO `services_without_reg` (`Service_ID`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `services_with_reg`
--

CREATE TABLE `services_with_reg` (
  `Service_ID` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `services_with_reg`
--

INSERT INTO `services_with_reg` (`Service_ID`) VALUES
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `service_charges`
--

CREATE TABLE `service_charges` (
  `Charge_date&time` datetime NOT NULL,
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Service_ID` tinyint(1) NOT NULL CHECK (`Service_ID` < 7 and `Service_ID` > 0),
  `Description` tinytext NOT NULL,
  `Amount` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `service_charges`
--

INSERT INTO `service_charges` (`Charge_date&time`, `NFC_ID`, `Service_ID`, `Description`, `Amount`) VALUES
('2020-08-03 19:23:24', 3, 4, 'Gymnastic instruments', 8),
('2020-08-05 17:42:49', 3, 2, 'Salad', 8),
('2020-09-19 11:51:20', 4, 5, 'Sauna', 15),
('2021-01-19 06:10:20', 5, 6, 'Reading', 0),
('2021-02-20 12:00:00', 1, 1, 'Whiskey', 6),
('2021-02-21 11:51:20', 1, 1, 'Water', 1),
('2021-02-22 11:51:20', 1, 1, 'Vodka', 7),
('2021-05-22 20:12:40', 2, 2, 'Spaghetti', 12);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `service_registration`
--

CREATE TABLE `service_registration` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Service_ID` tinyint(1) NOT NULL CHECK (`Service_ID` < 7 and `Service_ID` > 0),
  `Registration_date&time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `service_registration`
--

INSERT INTO `service_registration` (`NFC_ID`, `Service_ID`, `Registration_date&time`) VALUES
(1, 4, '2021-02-19 12:00:00'),
(1, 5, '2021-02-19 12:00:00'),
(3, 4, '2020-08-03 12:30:00'),
(4, 5, '2020-09-18 12:00:00'),
(5, 6, '2021-01-15 11:00:00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `visit`
--

CREATE TABLE `visit` (
  `NFC_ID` smallint(3) NOT NULL CHECK (`NFC_ID` > 0 and `NFC_ID` < 401),
  `Location_ID` smallint(3) NOT NULL CHECK (`Location_ID` > 0 and `Location_ID` < 600),
  `Visit_date` datetime NOT NULL,
  `Leave_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `visit`
--

INSERT INTO `visit` (`NFC_ID`, `Location_ID`, `Visit_date`, `Leave_date`) VALUES
(3, 207, '2020-08-02 12:06:00', '2020-08-02 17:00:00'),
(3, 31, '2020-08-03 12:30:00', '2020-08-03 17:30:04'),
(4, 305, '2020-09-17 12:07:00', '2020-09-17 12:52:40'),
(4, 27, '2020-09-18 13:00:00', '2020-09-18 14:00:00'),
(5, 503, '2021-01-13 12:00:00', '2021-01-14 05:00:00'),
(5, 12, '2021-01-15 11:30:00', '2021-01-15 12:00:00'),
(1, 101, '2021-02-18 12:10:00', '2021-02-18 16:00:00'),
(1, 101, '2021-02-18 22:10:00', '2021-02-19 16:00:00'),
(1, 1, '2021-02-20 11:50:00', '2021-02-20 12:50:00'),
(1, 1, '2021-02-22 11:50:00', '2021-02-20 12:50:00'),
(1, 101, '2021-02-20 12:10:00', '2021-02-20 16:00:00'),
(1, 1, '2021-02-21 11:50:00', '2021-02-21 12:50:00'),
(2, 14, '2021-05-18 12:00:00', '2021-05-18 20:00:00'),
(2, 106, '2021-05-18 12:07:00', '2021-05-19 12:00:00');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`NFC_ID`);

--
-- Ευρετήρια για πίνακα `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`NFC_ID`,`email`);

--
-- Ευρετήρια για πίνακα `get_services`
--
ALTER TABLE `get_services`
  ADD PRIMARY KEY (`NFC_ID`,`Service_ID`,`Charge_date&time`);

--
-- Ευρετήρια για πίνακα `has_access`
--
ALTER TABLE `has_access`
  ADD PRIMARY KEY (`NFC_ID`,`Location_ID`);

--
-- Ευρετήρια για πίνακα `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Ευρετήρια για πίνακα `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`NFC_ID`,`Phone_Number`);

--
-- Ευρετήρια για πίνακα `provided`
--
ALTER TABLE `provided`
  ADD PRIMARY KEY (`Service_ID`,`Location_ID`);

--
-- Ευρετήρια για πίνακα `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Ευρετήρια για πίνακα `services_without_reg`
--
ALTER TABLE `services_without_reg`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Ευρετήρια για πίνακα `services_with_reg`
--
ALTER TABLE `services_with_reg`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Ευρετήρια για πίνακα `service_charges`
--
ALTER TABLE `service_charges`
  ADD PRIMARY KEY (`Charge_date&time`,`NFC_ID`,`Service_ID`),
  ADD KEY `nfc_id_idx` (`NFC_ID`);

--
-- Ευρετήρια για πίνακα `service_registration`
--
ALTER TABLE `service_registration`
  ADD PRIMARY KEY (`NFC_ID`,`Service_ID`);

--
-- Ευρετήρια για πίνακα `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`NFC_ID`,`Location_ID`,`Visit_date`),
  ADD KEY `visit_date_idx` (`Visit_date`),
  ADD KEY `leave_date_idx` (`Leave_date`);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `get_services`
--
ALTER TABLE `get_services`
  ADD CONSTRAINT `get_services_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `get_services_ibfk_2` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `get_services_ibfk_3` FOREIGN KEY (`Charge_date&time`) REFERENCES `service_charges` (`Charge_date&time`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `has_access`
--
ALTER TABLE `has_access`
  ADD CONSTRAINT `has_access_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `has_access_ibfk_2` FOREIGN KEY (`Location_ID`) REFERENCES `locations` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `phone_number`
--
ALTER TABLE `phone_number`
  ADD CONSTRAINT `phone_number_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `provided`
--
ALTER TABLE `provided`
  ADD CONSTRAINT `provided_ibfk_1` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `provided_ibfk_2` FOREIGN KEY (`Location_ID`) REFERENCES `locations` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `services_without_reg`
--
ALTER TABLE `services_without_reg`
  ADD CONSTRAINT `services_without_reg_ibfk_1` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `services_with_reg`
--
ALTER TABLE `services_with_reg`
  ADD CONSTRAINT `services_with_reg_ibfk_1` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `service_charges`
--
ALTER TABLE `service_charges`
  ADD CONSTRAINT `service_charges_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_charges_ibfk_2` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `service_registration`
--
ALTER TABLE `service_registration`
  ADD CONSTRAINT `service_registration_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_registration_ibfk_2` FOREIGN KEY (`Service_ID`) REFERENCES `services_with_reg` (`Service_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `clients` (`NFC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`Location_ID`) REFERENCES `locations` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
