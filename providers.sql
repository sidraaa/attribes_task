-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2016 at 05:27 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `providers`
--

-- --------------------------------------------------------

--
-- Table structure for table `providers_table`
--

CREATE TABLE `providers_table` (
  `userID` int(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `speciality_type` int(10) NOT NULL,
  `specialityName` varchar(50) NOT NULL,
  `reviewCount` int(10) DEFAULT NULL,
  `profile_status` varchar(50) DEFAULT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `postcode` int(10) DEFAULT NULL,
  `online_appt` int(50) DEFAULT NULL,
  `new_patient` int(50) DEFAULT NULL,
  `lat` double NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `lang` double NOT NULL,
  `insurancePlans` varchar(100) DEFAULT NULL,
  `gpslocavailable` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `fullName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `fav_cnt` int(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `credential` varchar(50) DEFAULT NULL,
  `contactNo` int(20) NOT NULL,
  `city_id` int(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `businessId` int(20) DEFAULT NULL,
  `businessID1` int(20) DEFAULT NULL,
  `avgRating` int(5) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `PremierListingFlag` varchar(1) DEFAULT NULL,
  `DisplaySpecialization` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `providers_table`
--

INSERT INTO `providers_table` (`userID`, `state`, `speciality_type`, `specialityName`, `reviewCount`, `profile_status`, `profile_image`, `prefix`, `postcode`, `online_appt`, `new_patient`, `lat`, `lastName`, `lang`, `insurancePlans`, `gpslocavailable`, `gender`, `fullName`, `firstName`, `fav_cnt`, `email`, `credential`, `contactNo`, `city_id`, `city`, `businessId`, `businessID1`, `avgRating`, `address`, `active`, `PremierListingFlag`, `DisplaySpecialization`) VALUES
(125862, 'WA', 1, 'Eye Doctor', 0, 'listed', '', NULL, 98674, 1, 0, 45.937521, 'TRAN', -122.686548, '', 'N', 'F', 'DocHelp Admin', 'JENNIFER', 0, '', 'O.D.', 0, 42213, 'WOODLAND', 1, 1, NULL, '1486 DIKE ACCESS RD', 'Y', 'N', 'optometrist'),
(141099, 'WA', 12, 'Sports Medicine Specialist', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'HOFMANN', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'PAMELA', 0, '', 'M.S., A.T.C.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '307 FAIRWAY DR', 'Y', 'N', 'specialist/technologist (athletic trainer)'),
(142529, 'WA', 12, 'Sports Medicine Specialist', 0, 'verified', '', 'DR', 98520, 1, 0, 47.002735, 'GROCHOW', -123.67129, 'SEIU', 'N', 'F', 'DocHelp Admin', 'JESSE', 0, 'jesse@dochelp.com', 'fsdf', 2147483647, 42094, 'ABERDEEN', 1, 1, NULL, '220 W 1ST ST', 'Y', 'N', 'Sports Medicine Specialist'),
(144789, 'WA', 50, 'Physical Therapy', 0, 'listed', '', NULL, 99001, 1, 0, 47.643803, 'ANDERSON', -117.59205, '', 'N', 'F', 'DocHelp Admin', 'VANESSA', 0, '', 'DPT', 0, 42302, 'AIRWAY HEIGHTS', 1, 1, NULL, '12721 W 14TH AVE', 'Y', 'N', 'physical therapist'),
(105310, 'WA', 10, 'Dermatology', 0, 'listed', '', NULL, 98520, 1, 0, 46.976351, 'KAO', -123.8385713, '', 'N', 'M', 'DocHelp Admin', 'CHING', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1812 SUMNER AVE', 'Y', 'N', 'dermatology'),
(148827, 'WA', 50, 'Physical Therapy', 0, 'listed', '', NULL, 99001, 1, 0, 47.643803, 'JOHNSON', -117.59205, '', 'N', 'F', 'DocHelp Admin', 'AMANDA', 0, '', 'DPT', 0, 42302, 'AIRWAY HEIGHTS', 1, 1, NULL, '12721 W 14TH AVE', 'Y', 'N', 'physical therapist'),
(119854, 'WA', 5, 'Primary Care Doctor(Gastroenterology)', 0, 'verified', '', 'Dr', 98520, 1, 0, 47.002735, 'MARASIGAN', -123.67129, 'undefined', 'N', 'M', 'DocHelp Admin', 'JUSTIN', 0, 'justin@dochelp.com', 'DO', 2147483647, 42094, 'ABERDEEN', 1, 1, NULL, '1006 NORTH H STREET', 'Y', 'N', 'Primary Care Doctor(Gastroenterology)'),
(116983, 'WA', 6, 'Emergency Medicine', 0, 'listed', '', 'MS.', 98520, 1, 0, 46.9792794, 'MCCANN', -123.8469526, '', 'N', 'F', 'DocHelp Admin', 'BESSIE', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '915 ANDERSON DR', 'Y', 'N', 'emergency medicine'),
(103115, 'WA', 2, 'Chiropractor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.9753327, 'HALE', -123.8506728, '', 'N', 'M', 'DocHelp Admin', 'ROBERT', 0, '', 'DC', 0, 42094, 'ABERDEEN', 1, 1, NULL, '2700 SIMPSON AVE', 'Y', 'N', 'chiropractor'),
(123620, 'WA', 2, 'Chiropractor', 0, 'listed', '', 'MISS', 98520, 1, 0, 47.002735, 'BROCKHOFF', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'MATTI', 0, '', 'LMP', 0, 42094, 'ABERDEEN', 1, 1, NULL, '400 W WISHKAH ST', 'Y', 'N', 'chiropractor'),
(111169, 'WA', 2, 'Chiropractor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'BELL', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'DONALD', 0, '', 'D.C.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '110 S PARK ST', 'Y', 'N', 'chiropractor'),
(111562, 'WA', 2, 'Chiropractor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'LOERTSCHER', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'FRED', 0, '', 'D.C.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1310 SIMPSON AVE', 'Y', 'N', 'chiropractor (occupational health)'),
(104820, 'WA', 2, 'Chiropractor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.9777459, 'CHANDLER', -123.8009354, '', 'N', 'M', 'DocHelp Admin', 'GARY', 0, '', 'DC', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1314 E WISHKAH', 'Y', 'N', 'chiropractor'),
(101385, 'WA', 2, 'Chiropractor', 0, 'listed', '', 'MRS.', 98520, 1, 0, 46.9726079, 'STAMWITZ', -123.8219166, '', 'N', 'F', 'DocHelp Admin', 'KATIE', 0, '', 'DC', 0, 42094, 'ABERDEEN', 1, 1, NULL, '400 WEST WISHKAH', 'Y', 'N', 'chiropractor'),
(114936, 'WA', 2, 'Chiropractor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'DOHRMANN', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'CYRUS', 0, '', 'D.C.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '2321 SIMPSON AVE', 'Y', 'N', 'chiropractor'),
(113576, 'WA', 2, 'Chiropractor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'HENSLEY', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'BRADLEY', 0, '', 'D.C.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1906 SUMNER AVE', 'Y', 'N', 'chiropractor'),
(105512, 'WA', 3, 'Primary Care Doctor', 1, 'verified', '', 'DR', 98520, 1, 1, 46.981319, 'WORTH', -123.845683, 'undefined', 'N', 'f', 'DocHelp Admin', 'ROBERT', 0, 'robert@dochelp.com', 'MD', 2147483647, 42094, 'ABERDEEN', 1, 1, 3, '1020 ANDERSON DR', 'Y', 'N', 'Primary Care Doctor'),
(100688, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 46.981876, 'GIBBS', -123.8193548, '', 'N', 'M', 'DocHelp Admin', 'PHILIP', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '611 NORTH F ST', 'Y', 'N', 'internal medicine'),
(125891, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 46.981319, 'HERNANDEZ', -123.845683, '', 'N', 'F', 'DocHelp Admin', 'OLGA', 0, '', 'DO', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1020 ANDERSON DR', 'Y', 'N', 'family medicine'),
(118263, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'HALLAK', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'LAURA', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1921 SUMNER AVE', 'Y', 'N', 'family medicine'),
(105538, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 46.981319, 'ERICKSON', -123.845683, '', 'N', 'F', 'DocHelp Admin', 'JULIETTE', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1020 ANDERSON DR', 'Y', 'N', 'family medicine'),
(105510, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.981319, 'BAUSHER', -123.845683, '', 'N', 'M', 'DocHelp Admin', 'JOHN', 0, '', 'MD, PHD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1020 ANDERSON DR', 'Y', 'N', 'family medicine'),
(100384, 'WA', 3, 'Primary Care Doctor', 0, 'verified', '', 'DR', 98520, 1, 0, 46.9792794, 'BASHANDY', -123.8469526, 'undefined', 'N', 'F', 'DocHelp Admin', 'HANY', 0, 'hanygabar@dochelp.com', 'MD', 2147483647, 42094, 'ABERDEEN', 1, 1, NULL, '915 ANDERSON DR', 'Y', 'N', 'Primary Care Doctor'),
(107918, 'WA', 3, 'Primary Care Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'KATO', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'COLETTE', 0, '', 'DO', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1220 BASICH BLVD', 'Y', 'N', 'family medicine'),
(140142, 'WA', 43, 'Surgery', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'GIFFORD', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'JONATHAN', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '954 ANDERSON DR', 'Y', 'N', 'surgery'),
(142076, 'WA', 43, 'Surgery', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'PIERCE', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'DAMON', 0, '', 'MD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '954 ANDERSON DR', 'Y', 'N', 'surgery'),
(105224, 'WA', 4, 'Dental Doctor', 0, 'verified', '', 'DR', 98520, 1, 0, 46.978888, 'JOHNSON', -123.812412, 'undefined', 'N', 'F', 'wombusiness', 'TODD', 0, 'toddjohn@dochelp.com', 'DDS', 2147483647, 42094, 'ABERDEEN', 5, 5, NULL, '620 E MARKET ST', 'Y', 'N', 'Dental'),
(127016, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'NOMURA', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'STEVEN', 0, '', 'D.D.S.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '222 E 1ST ST', 'Y', 'N', 'dentist (general practice)'),
(130611, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'RUPERT', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'STEPHEN', 0, '', 'DDS', 0, 42094, 'ABERDEEN', 1, 1, NULL, '950 OAK ST', 'Y', 'N', 'dentist (general practice)'),
(101011, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.978888, 'HANSON', -123.812412, '', 'N', 'M', 'DocHelp Admin', 'RICHARD', 0, '', NULL, 0, 42094, 'ABERDEEN', 1, 1, NULL, '620 E MARKET ST', 'Y', 'N', 'dentist (general practice)'),
(104064, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'MR.', 98520, 1, 0, 46.9780623, 'TOMLINSON', -123.8230106, '', 'N', 'M', 'DocHelp Admin', 'MARC', 0, '', 'DDS PS', 0, 42094, 'ABERDEEN', 1, 1, NULL, '104 W 4TH ST', 'Y', 'N', 'dentist'),
(102299, 'WA', 4, 'Dental Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 46.9780623, 'SUND', -123.8230106, '', 'N', 'M', 'DocHelp Admin', 'KIRK', 0, '', 'DDS', 0, 42094, 'ABERDEEN', 1, 1, NULL, '104 W 4TH ST', 'Y', 'N', 'dentist'),
(101586, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.977213, 'PITTS', -123.817805, '', 'N', 'M', 'DocHelp Admin', 'JON', 0, '', 'DDS', 0, 42094, 'ABERDEEN', 1, 1, NULL, '222 E FIRST ST', 'Y', 'N', 'dentist'),
(113045, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'FORRESTER', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'JOHN', 0, '', 'D.D.S., M.S., P.S.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '218 N BROADWAY ST', 'Y', 'N', 'dentist (orthodontics and dentofacial orthopedics)'),
(123031, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'LE', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'HUONG', 0, '', 'DMD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '218 N BROADWAY ST', 'Y', 'N', 'dentist (orthodontics and dentofacial orthopedics)'),
(115821, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'LEMON', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'JEFFERY', 0, '', 'DMD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '301 N BROADWAY', 'Y', 'N', 'dentist'),
(120262, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'NOMURA', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'GLEN', 0, '', 'D.D.S.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '222 E 1ST ST', 'Y', 'N', 'dentist'),
(122162, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'VENCZEL', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'GEORGE', 0, '', NULL, 0, 42094, 'ABERDEEN', 1, 1, NULL, '600 N I ST APT 10', 'Y', 'N', 'dentist'),
(113124, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'BACHE', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'FRED', 0, '', 'D.D.S.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '114 S I ST', 'Y', 'N', 'dentist (general practice)'),
(110358, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'MR.', 98520, 1, 0, 47.002735, 'MATHEWS', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'DONALD', 0, '', 'LD DPD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '404 E WISHKAH ST', 'Y', 'N', 'denturist'),
(115399, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'PARKS', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'DAVID', 0, '', 'DDS', 0, 42094, 'ABERDEEN', 1, 1, NULL, '321 W 1ST ST', 'Y', 'N', 'dentist (oral and maxillofacial surgery)'),
(117373, 'WA', 4, 'Dental Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'SOLIS', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'ALEX', 0, '', 'D.M.D., M.S.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '611 N F ST', 'Y', 'N', 'dentist (orthodontics and dentofacial orthopedics)'),
(116810, 'WA', 1, 'Eye Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'FERRIS', -123.67129, '', 'N', 'F', 'DocHelp Admin', 'ANGELA', 0, '', 'LDO', 0, 42094, 'ABERDEEN', 1, 1, NULL, '5609 OLYMPIC HWY', 'Y', 'N', 'optometrist'),
(102875, 'WA', 1, 'Eye Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.9771915, 'MELARA', -123.8061993, '', 'N', 'F', 'DocHelp Admin', 'CANDICE', 0, '', 'OD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '207 S CHEHALIS ST', 'Y', 'N', 'optometrist'),
(105704, 'WA', 1, 'Eye Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.9766814, 'MEHLHOFF', -123.821073, '', 'N', 'M', 'DocHelp Admin', 'CRAIG', 0, '', 'O.D.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '301 N BROADWAY ST', 'Y', 'N', 'optometrist'),
(110331, 'WA', 1, 'Eye Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'ESTALILLA', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'FRANCIS', 0, '', 'M.D.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1720 SUMNER AVE', 'Y', 'N', 'ophthalmology'),
(112200, 'WA', 1, 'Eye Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 47.002735, 'BOGDANOVICH', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'GREGORY', 0, '', 'O.D.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '500 W MARKET ST', 'Y', 'N', 'optometrist'),
(103435, 'WA', 1, 'Eye Doctor', 0, 'verified', '', 'DR', 98520, 1, 0, 46.9770125, 'WEYRICH', -123.8043723, ' Eyecare Plan', 'N', 'M', 'DocHelp Admin', 'JAMES', 0, 'jamesw@dochelp.com', 'OD', 2147483647, 42094, 'ABERDEEN', 1, 1, NULL, '909 EAST WISHKAH STREET', 'Y', 'N', 'Eye Doctor'),
(105720, 'WA', 1, 'Eye Doctor', 0, 'listed', '', 'DR.', 98520, 1, 0, 46.9766814, 'BERKEN', -123.821073, '', 'N', 'M', 'DocHelp Admin', 'SCOTT', 0, '', 'O.D.', 0, 42094, 'ABERDEEN', 1, 1, NULL, '301 N BROADWAY ST', 'Y', 'N', 'optometrist'),
(112671, 'WA', 4, 'Dental Doctor', 0, 'listed', '', NULL, 98520, 1, 0, 47.002735, 'RIOJAS', -123.67129, '', 'N', 'M', 'DocHelp Admin', 'ABEL', 0, '', 'DMD', 0, 42094, 'ABERDEEN', 1, 1, NULL, '1813 SUMNER AVE', 'Y', 'N', 'dentist');

-- --------------------------------------------------------

--
-- Table structure for table `search_table`
--

CREATE TABLE `search_table` (
  `city_id` int(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `speciality_type` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_table`
--

INSERT INTO `search_table` (`city_id`, `state`, `speciality_type`) VALUES
(42094, 'WA', 1),
(42094, 'WA', 4),
(42094, 'WA', 43),
(42094, 'WA', 3),
(42094, 'WA', 2),
(42094, 'WA', 5),
(42094, 'WA', 6),
(42094, 'WA', 10),
(42302, 'WA', 50),
(42094, 'WA', 12),
(42213, 'WA', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `providers_table`
--
ALTER TABLE `providers_table`
  ADD PRIMARY KEY (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
