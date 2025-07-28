-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2025 at 12:59 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladminlogin`
--

DROP TABLE IF EXISTS `tbladminlogin`;
CREATE TABLE IF NOT EXISTS `tbladminlogin` (
  `Login_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladminlogin`
--

INSERT INTO `tbladminlogin` (`Login_id`, `Username`, `Password`) VALUES
(1, 'admin ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingrequest`
--

DROP TABLE IF EXISTS `tblbookingrequest`;
CREATE TABLE IF NOT EXISTS `tblbookingrequest` (
  `Bookingrequest_id` int(11) NOT NULL AUTO_INCREMENT,
  `Requested_date` date NOT NULL,
  `From_Date` date NOT NULL,
  `Noofpersons` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Remark` varchar(2000) DEFAULT NULL,
  `Customer_id` int(11) NOT NULL,
  `Package_id` int(11) NOT NULL,
  PRIMARY KEY (`Bookingrequest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookingrequest`
--

INSERT INTO `tblbookingrequest` (`Bookingrequest_id`, `Requested_date`, `From_Date`, `Noofpersons`, `Status`, `Remark`, `Customer_id`, `Package_id`) VALUES
(30, '2024-10-09', '2024-10-25', 1, 'Paid', NULL, 8, 5),
(31, '2024-10-09', '2024-10-28', 2, 'Rejected', 'not available', 9, 11),
(32, '2024-10-09', '2024-10-18', 5, 'Verified', NULL, 9, 6),
(33, '2024-10-10', '2024-10-29', 4, 'Paid', NULL, 10, 11),
(34, '2024-10-12', '2024-11-14', 2, 'Paid', NULL, 10, 11),
(35, '2024-10-12', '2024-10-18', 5, 'Paid', NULL, 10, 11),
(36, '2024-10-12', '2024-10-30', 2, 'Rejected', 'package not available due to climate change', 10, 5),
(37, '2024-10-12', '2024-10-29', 75, 'Rejected', 'to many people to handle', 10, 5),
(38, '2024-10-12', '2024-10-28', 4, 'Paid', NULL, 10, 11),
(39, '2024-10-14', '2024-10-26', 1, 'Requested', NULL, 10, 24),
(40, '2024-10-15', '2024-10-23', 2, 'Paid', NULL, 10, 11),
(41, '2024-10-17', '2024-10-19', 1, 'Paid', NULL, 10, 22),
(42, '2024-10-18', '2024-10-23', 5, 'Requested', NULL, 10, 11),
(43, '2024-10-23', '2024-10-31', 1, 'Verified', NULL, 10, 13),
(44, '2024-10-23', '2024-10-29', 4, 'Paid', NULL, 14, 25),
(45, '2024-10-25', '2024-10-30', 2, 'Paid', NULL, 10, 8),
(46, '2024-10-29', '2024-11-01', 3, 'Rejected', NULL, 10, 19),
(47, '2024-11-04', '2024-11-14', 1, 'Paid', NULL, 10, 5),
(48, '2024-11-04', '2024-11-11', 5, 'Requested', NULL, 10, 5),
(49, '2024-11-04', '2024-11-11', 9, 'Requested', NULL, 10, 5),
(50, '2024-12-28', '2024-12-31', 4, 'Requested', NULL, 10, 7),
(51, '2025-01-06', '2025-01-22', 2, 'Requested', NULL, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomerreg`
--

DROP TABLE IF EXISTS `tblcustomerreg`;
CREATE TABLE IF NOT EXISTS `tblcustomerreg` (
  `Customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `House_Name` varchar(30) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Regdate` date NOT NULL,
  `Idproof` varchar(2000) NOT NULL,
  `Location_id` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomerreg`
--

INSERT INTO `tblcustomerreg` (`Customer_id`, `Name`, `House_Name`, `Pincode`, `Phone`, `Email`, `Regdate`, `Idproof`, `Location_id`, `Username`, `Password`) VALUES
(8, 'Thomas Paul', 'Vevukattil H ', 145698, 1478523690, 'josephpaul1atmattakattil@gmail.com', '2024-09-10', 'aadhaar-card.jpg', 5, 'Thomas123', 'Thomas123'),
(9, 'Rahul J christy', 'mallusseril', 686690, 9945781236, 'rahuljchristy333@gmail.com', '2024-10-09', 'aadhar.png', 76, 'rahul123', 'Rahul123'),
(10, 'Sivani krishna', 'mattathveetil', 686692, 9945457086, 'bookphone606@gmail.com', '2024-10-10', 'aadhar.png', 99, 'Sivani123', 'Sivani123'),
(15, 'Kannapoi', 'htalayille', 686691, 9945781255, 'orgbussines@gmail.com', '2024-10-29', 'aadhar.png', 5, 'kannan123', 'Kannan123'),
(12, 'Joel Jose', 'paerakkatil', 123456, 8523697410, 'josephpaul1atmattakattil@gmail.com', '2024-10-18', 'aadhar.png', 101, 'JoelJoel123', 'JoelJoel123'),
(13, 'Jose Joel', 'palatil', 682030, 8523697410, 'josephpaul1atmattakattil@gmail.com', '2024-10-18', 'aadhaar-card.jpg', 102, 'JoseJoel123', 'JoseJoel123');

-- --------------------------------------------------------

--
-- Table structure for table `tbldistrict`
--

DROP TABLE IF EXISTS `tbldistrict`;
CREATE TABLE IF NOT EXISTS `tbldistrict` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldistrict`
--

INSERT INTO `tbldistrict` (`district_id`, `district_name`) VALUES
(1, 'Thiruvananthapuram'),
(2, 'Kollam'),
(3, 'Pathanamthitta'),
(4, 'Alappuzha'),
(5, 'Kottayam'),
(6, 'Idukki'),
(7, 'Ernakulam'),
(8, 'Thrissur'),
(9, 'Palakkad'),
(10, 'Malappuram'),
(11, 'Kozhikode'),
(12, 'Wayanad'),
(13, 'Kannur'),
(14, 'Kasaragod');

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

DROP TABLE IF EXISTS `tbllocation`;
CREATE TABLE IF NOT EXISTS `tbllocation` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`location_id`, `location_name`, `district_id`) VALUES
(1, 'Thiruvananthapuram', 1),
(2, 'Neyyattinkara', 1),
(3, 'Varkala', 1),
(4, 'Attingal', 1),
(5, 'Kovalam', 1),
(6, 'Kattakada', 1),
(7, 'Nedumangad', 1),
(8, 'Vizhinjam', 1),
(9, 'Balaramapuram', 1),
(10, 'Parassala', 1),
(11, 'Pothencode', 1),
(12, 'Aryanad', 1),
(13, 'Poovar', 1),
(14, 'Kalliyoor', 1),
(15, 'Kaniyapuram', 1),
(16, 'Kollam', 2),
(17, 'Karunagappally', 2),
(18, 'Punalur', 2),
(19, 'Paravur', 2),
(20, 'Chavara', 2),
(21, 'Kottarakkara', 2),
(22, 'Anchal', 2),
(23, 'Pathanapuram', 2),
(24, 'Sasthamkotta', 2),
(25, 'Kunnathur', 2),
(26, 'Kundara', 2),
(27, 'Oachira', 2),
(28, 'Ezhukone', 2),
(29, 'Kadakkal', 2),
(30, 'Mayyanad', 2),
(31, 'Pathanamthitta', 3),
(32, 'Adoor', 3),
(33, 'Thiruvalla', 3),
(34, 'Ranni', 3),
(35, 'Konni', 3),
(36, 'Pandalam', 3),
(37, 'Kozhencherry', 3),
(38, 'Mallappally', 3),
(39, 'Parumala', 3),
(40, 'Kulanada', 3),
(41, 'Kadapra', 3),
(42, 'Omallur', 3),
(43, 'Aranmula', 3),
(44, 'Niranam', 3),
(45, 'Elanthoor', 3),
(46, 'Alappuzha', 4),
(47, 'Cherthala', 4),
(48, 'Ambalappuzha', 4),
(49, 'Kayamkulam', 4),
(50, 'Haripad', 4),
(51, 'Mavelikkara', 4),
(52, 'Chengannur', 4),
(53, 'Mannar', 4),
(54, 'Karthikappally', 4),
(55, 'Thanneermukkom', 4),
(56, 'Mararikulam', 4),
(57, 'Punnapra', 4),
(58, 'Kuttanad', 4),
(59, 'Aroor', 4),
(60, 'Pulincunnu', 4),
(61, 'Kottayam', 5),
(62, 'Changanassery', 5),
(63, 'Pala', 5),
(64, 'Ettumanoor', 5),
(65, 'Vaikom', 5),
(66, 'Kuravilangad', 5),
(67, 'Erattupetta', 5),
(68, 'Thalayolaparambu', 5),
(69, 'Kaduthuruthy', 5),
(70, 'Ponkunnam', 5),
(71, 'Mundakkayam', 5),
(72, 'Manarcad', 5),
(73, 'Uzhavoor', 5),
(74, 'Pampady', 5),
(75, 'Kanjirappally', 5),
(76, 'Thodupuzha', 6),
(77, 'Munnar', 6),
(78, 'Idukki', 6),
(79, 'Painavu', 6),
(80, 'Kumily', 6),
(81, 'Adimali', 6),
(82, 'Devikulam', 6),
(83, 'Nedumkandam', 6),
(84, 'Kattappana', 6),
(85, 'Peermade', 6),
(86, 'Vagamon', 6),
(87, 'Vazhathope', 6),
(88, 'Rajakumari', 6),
(89, 'Marayoor', 6),
(90, 'Anakkara', 6),
(91, 'Kochi', 7),
(92, 'Aluva', 7),
(93, 'Thrippunithura', 7),
(94, 'Perumbavoor', 7),
(95, 'Kalamassery', 7),
(96, 'North Paravur', 7),
(97, 'Angamaly', 7),
(98, 'Muvattupuzha', 7),
(99, 'Kothamangalam', 7),
(100, 'Vypin', 7),
(101, 'Eloor', 7),
(102, 'Perumbavoor', 7),
(103, 'Chottanikkara', 7),
(104, 'Piravom', 7),
(211, 'Maradu', 7),
(106, 'Thrissur', 8),
(107, 'Irinjalakuda', 8),
(108, 'Chalakudy', 8),
(109, 'Guruvayur', 8),
(110, 'Kodungallur', 8),
(111, 'Kunnamkulam', 8),
(112, 'Ponnani', 8),
(113, 'Wadakkanchery', 8),
(114, 'Ollur', 8),
(115, 'Mala', 8),
(116, 'Parappukkara', 8),
(117, 'Anthikkad', 8),
(118, 'Mulamthuruthy', 8),
(119, 'Kaipamangalam', 8),
(120, 'Vadanappally', 8),
(121, 'Palakkad', 9),
(122, 'Ottapalam', 9),
(123, 'Chittur', 9),
(124, 'Shoranur', 9),
(125, 'Mannarkkad', 9),
(126, 'Alathur', 9),
(127, 'Pattambi', 9),
(128, 'Kanjirappuzha', 9),
(129, 'Nemmara', 9),
(130, 'Kuzhalmannam', 9),
(131, 'Kollengode', 9),
(132, 'Thrithala', 9),
(133, 'Cherpulassery', 9),
(134, 'Elappully', 9),
(135, 'Vadakkanchery', 9),
(136, 'Malappuram', 10),
(137, 'Manjeri', 10),
(138, 'Perinthalmanna', 10),
(139, 'Ponnani', 10),
(140, 'Tirur', 10),
(141, 'Nilambur', 10),
(142, 'Kondotty', 10),
(143, 'Kottakkal', 10),
(144, 'Edappal', 10),
(145, 'Tanur', 10),
(146, 'Pandikkad', 10),
(147, 'Chemmad', 10),
(148, 'Areekode', 10),
(149, 'Vengara', 10),
(150, 'Vettom', 10),
(151, 'Kozhikode', 11),
(152, 'Vadakara', 11),
(153, 'Koyilandy', 11),
(154, 'Balussery', 11),
(155, 'Thamarassery', 11),
(156, 'Ramanattukara', 11),
(157, 'Feroke', 11),
(158, 'Kunnamangalam', 11),
(159, 'Beypore', 11),
(160, 'Mukkam', 11),
(161, 'Chemancheri', 11),
(162, 'Payyoli', 11),
(163, 'Koduvally', 11),
(164, 'Kuttiady', 11),
(165, 'Narikkuni', 11),
(166, 'Kalpetta', 12),
(167, 'Sultan Bathery', 12),
(168, 'Mananthavady', 12),
(169, 'Meppadi', 12),
(170, 'Vythiri', 12),
(171, 'Panamaram', 12),
(172, 'Thirunelly', 12),
(173, 'Ambalavayal', 12),
(174, 'Pulpally', 12),
(175, 'Kenichira', 12),
(176, 'Pozhuthana', 12),
(177, 'Padinjarathara', 12),
(178, 'Muttil', 12),
(179, 'Kaniyambetta', 12),
(180, 'Thondernad', 12),
(181, 'Kannur', 13),
(182, 'Thalassery', 13),
(183, 'Payyanur', 13),
(184, 'Mattannur', 13),
(185, 'Iritty', 13),
(186, 'Panoor', 13),
(187, 'Koothuparamba', 13),
(188, 'Sreekandapuram', 13),
(189, 'Pappinisseri', 13),
(190, 'Valapattanam', 13),
(191, 'Muzhappilangad', 13),
(192, 'Kannapuram', 13),
(193, 'Kadachira', 13),
(194, 'Anjarakkandy', 13),
(195, 'Cherupuzha', 13),
(196, 'Kasaragod', 14),
(197, 'Kanhangad', 14),
(198, 'Nileshwar', 14),
(199, 'Manjeshwar', 14),
(200, 'Uppala', 14),
(201, 'Cheruvathur', 14),
(202, 'Parappa', 14),
(203, 'Vellarikundu', 14),
(204, 'Hosdurg', 14),
(205, 'Badiadka', 14),
(206, 'Udma', 14),
(207, 'Kumbla', 14),
(208, 'Pilicode', 14),
(209, 'Puthur', 14),
(210, 'Muliyar', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tblpackage`
--

DROP TABLE IF EXISTS `tblpackage`;
CREATE TABLE IF NOT EXISTS `tblpackage` (
  `Package_id` int(11) NOT NULL AUTO_INCREMENT,
  `Package_name` varchar(50) NOT NULL,
  `Package_image` varchar(300) NOT NULL,
  `Description` text NOT NULL,
  `Noofdays` int(11) NOT NULL,
  `Amount` bigint(20) NOT NULL,
  `Status` varchar(30) NOT NULL DEFAULT 'Available',
  `Travelguide_id` int(11) NOT NULL,
  PRIMARY KEY (`Package_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpackage`
--

INSERT INTO `tblpackage` (`Package_id`, `Package_name`, `Package_image`, `Description`, `Noofdays`, `Amount`, `Status`, `Travelguide_id`) VALUES
(1, ' WonderJoy ', 'Athirappilly & Vazhachal Waterfalls.jpg', 'this is a highly joyfull location for family and friends to enjoy', 5, 1200, 'Unavailable', 1),
(22, 'weekend joy', 'neyyar-wildlife-sanctuary-trivandrum-tourism-entry-fee-timings-holidays-reviews-header.jpg', 'A wonderfull package to  explore  places like velliyani lake,neyyar wildlife scantuary,and the varkala itself ', 2, 2000, 'Available', 8),
(5, ' subins vibe', '	\nFort Kochi.jpeg', ' a full on travel experience package in kochi to widespread locations ', 6, 7500, 'Unavailable', 5),
(6, 'Exploring Trivandrum', 'napeir museam.jpg', 'Visit the beautiful spots of Thiruvananthapuram such as Kovalam Beach, Padmanabhaswamy Temple, Varkala Cliff, Poovar Island, Napier Museum, and Ponmudi Hill Station', 5, 6000, 'Available', 7),
(7, 'Backwaters of Kollam', 'Valiyaparamba Backwaters.jpeg', 'Enjoy the serene backwaters and beaches of Kollam. Major spots include Ashtamudi Lake, Kollam Beach, Jatayu Earth Center, Palaruvi Waterfalls, Thangassery Lighthouse, and Munroe Island', 4, 5500, 'Available', 7),
(8, 'Nature and Pilgrimage in Pathanamthitta', 'gavi forest.jpeg', 'Explore the spiritual and scenic destinations like Sabarimala, Perunthenaruvi Waterfalls, Konni Elephant Camp, Aranmula Parthasarathy Temple, Gavi Forest, and Kakki Reservoir.', 5, 6500, 'Available', 7),
(9, 'Alappuzha Houseboat Experience', 'banner image tourism.jpg', 'Sail through the backwaters of Alappuzha, visiting places such as Vembanad Lake, Marari Beach, Pathiramanal Island, Ambalappuzha Temple, Krishnapuram Palace, and Kuttanad Village.', 4, 7000, 'Available', 7),
(10, 'Cultural Heritage of Kottayam', 'Illikkal Kallu.jpeg', 'Discover Kottayamâ€™s rich culture by visiting places like Kumarakom Bird Sanctuary, Vaikom Temple, Thirunakkara Mahadeva Temple, Illikkal Kallu, Poonjar Palace, and Marmala Waterfalls', 6, 7500, 'Available', 7),
(11, 'Kochi City Tour and Gateways to High Range', 'Fort Kochi.jpeg', 'Visit the vibrant spots in and around Kochi like Fort Kochi, Mattancherry Palace, Cherai Beach, Marine Drive, Jewish Synagogue, Boothathankettu reserviour and Thattekad bird sanctuary', 3, 3500, 'Available', 7),
(12, 'Spiritual and Cultural Thrissur', 'Athirapally Waterfalls.jpeg', 'Experience the heritage of Thrissur by visiting Vadakkunnathan Temple, Athirapally Waterfalls, Thrissur Zoo, Guruvayur Temple, Chimmony Wildlife Sanctuary, and Punnathur Kotta', 4, 5800, 'Available', 7),
(13, 'Palakkad Natural Wonders', 'Silent Valley National Park.jpeg', 'Explore Palakkadâ€™s beauty by visiting Silent Valley National Park, Palakkad Fort, Malampuzha Dam and Gardens, Parambikulam Wildlife Sanctuary, Nelliyampathy Hills, and Dhoni Waterfalls.', 5, 6499, 'Available', 7),
(14, 'Malappuram Heritage Tour', 'Teak Museum.jpeg', 'Tour the historical and cultural spots of Malappuram, including Kottakkunnu, Teak Museum, Nilambur, Thirunavaya Temple, Padinharekara Beach, and Kadalundi Bird Sanctuary.', 3, 3299, 'Available', 7),
(15, 'Kozhikode Beach and Beyond', 'kozhikode.jpeg', 'Visit the historical and natural sites of Kozhikode like Kozhikode Beach, Beypore Port, Kappad Beach, Mananchira Square, Tali Temple, and Peruvannamuzhi Dam.', 3, 3490, 'Available', 7),
(16, 'Wildlife and Nature in Wayanad', 'Chembra Peak.jpeg', 'Experience Wayanadâ€™s natural beauty by exploring Edakkal Caves, Banasura Sagar Dam, Chembra Peak, Muthanga Wildlife Sanctuary, Pookode Lake, and Kuruva Island.', 5, 6899, 'Available', 7),
(17, 'Heritage and Beaches of Kannur', 'StAngelFort.jpeg', 'Discover Kannurâ€™s charm through places like St. Angelo Fort, Payyambalam Beach, Arakkal Museum, Parassinikkadavu Snake Park, and Ezhimala', 4, 5500, 'Available', 7),
(18, 'Fort and Beaches of Kasaragod', 'Ranipuram.jpeg', 'Explore the historical and coastal spots of Kasaragod such as Bekal Fort, Kappil Beach,, Chandragiri Fort, Valiyaparamba Backwaters, and Ranipuram', 2, 2699, 'Available', 7),
(19, 'Hill Stations of Idukki', 'munnar.jpeg', 'Breathe the fresh air of Idukkiâ€™s hill stations by exploring Munnar, Thekkady, Ramakkalmedu, Vagamon, Idukki Arch Dam, and the Anamudi Peak.', 6, 7199, 'Available', 7),
(23, 'Malapuram 1 day tour Special', 'Mananchira Square.jpeg', 'A pacakge to explore manachira square  with your loved ones', 1, 800, 'Available', 8),
(24, 'Ananthapuram feel good', 'Ananthapura Lake Temple.jpeg', 'A feel good destination for inner peace and  peaceful time spending', 1, 500, 'Available', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

DROP TABLE IF EXISTS `tblpayment`;
CREATE TABLE IF NOT EXISTS `tblpayment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `payment_date` date NOT NULL,
  `bookingrequest_id` int(11) NOT NULL,
  `Adminamount` float NOT NULL,
  `Guideamount` float NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`payment_id`, `status`, `payment_date`, `bookingrequest_id`, `Adminamount`, `Guideamount`) VALUES
(11, 'Paid', '2024-10-09', 30, 225, 1455),
(12, 'Paid', '2024-10-12', 35, 105, 679),
(13, 'Paid', '2024-10-12', 38, 105, 679),
(14, 'Paid', '2024-10-15', 40, 105, 679),
(15, 'Paid', '2024-10-17', 41, 60, 388),
(16, 'Paid', '2024-10-18', 34, 105, 679),
(17, 'Paid', '2024-10-18', 33, 105, 679),
(19, 'Paid', '2024-10-25', 45, 195, 1261),
(20, 'Paid', '2024-11-04', 47, 225, 1455);

-- --------------------------------------------------------

--
-- Table structure for table `tblspotselect`
--

DROP TABLE IF EXISTS `tblspotselect`;
CREATE TABLE IF NOT EXISTS `tblspotselect` (
  `Spotselect_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `turistspot_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`Spotselect_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspotselect`
--

INSERT INTO `tblspotselect` (`Spotselect_id`, `package_id`, `turistspot_id`, `description`) VALUES
(2, 1, 5, 'Day 1: Arrival and Athirappilly Waterfalls Exploration\nMorning:\n\nArrival at Athirappilly: Aim to arrive early in the morning. The nearest airport is Cochin International Airport (around 40 km away), or you can reach by train to Chalakudy (30 km away).\nBreakfast: Enjoy a local Kerala-style breakfast at a nearby restaurant or your hotel.\nLate Morning:\n\nAthirappilly Waterfalls: Begin your day with a visit to the majestic Athirappilly Waterfalls, the largest waterfall in Kerala, often referred to as the \"Niagara of India.\"\nTake a walk to the base of the falls to enjoy the powerful rush of water.\nSpend time taking in the scenic beauty, ideal for photography.'),
(3, 3, 6, 'this is a highly joyfull location for family and friends to enjoy'),
(26, 22, 21, 'Day 1 explore places like ,neyyar wildlife scantuary,\r\nDay2  velliyani lake,varkla cliff'),
(5, 5, 9, 'Day 1: Arrive in Cochin and transfer to Munnar, visiting Valara, Cheeyappara waterfalls, and tea plantations on the way \r\n \r\nDay 2: Visit Mattupetty dam, Echo Point, and Kundala Dam in Munnar \r\n \r\nDay 3: Drive from Munnar to Thekkady \r\n \r\nDay 4: Visit the backwaters of Alleppey \r\n \r\nDay 5: Return to Cochin and tour Fort Kochi, which features colonial architecture \r\n \r\nDay 6: Depart Cochin'),
(6, 6, 22, 'Day 1 :Visit the beautiful spots ,Varkala Cliff,Padmanabhaswamy Temple,\r\nDay 2:Visit the Napier Museum and related palaces in the evening an campfire,\r\nDay 3: Visit the Ponmudi Hill Station , activites like trekking etc\r\nDay 4: Visit the Poovar Island ,and local activites, dance,etc..\r\nDay 5: Visiting kovalam Beach & water acticties'),
(7, 6, 20, 'Day 1 :Visit the beautiful spots ,Varkala Cliff,Padmanabhaswamy Temple,\r\nDay 2:Visit the Napier Museum and related palaces in the evening an campfire,\r\nDay 3: Visit the Ponmudi Hill Station , activites like trekking etc\r\nDay 4: Visit the Poovar Island ,and local activites, dance,etc..\r\nDay 5: Visiting kovalam Beach & water acticties'),
(8, 6, 23, 'Day 1 :Visit the beautiful spots ,Varkala Cliff,Padmanabhaswamy Temple,\r\nDay 2:Visit the Napier Museum and related palaces in the evening an campfire,\r\nDay 3: Visit the Ponmudi Hill Station , activites like trekking etc\r\nDay 4: Visit the Poovar Island ,and local activites, dance,etc..\r\nDay 5: Visiting kovalam Beach & water acticties'),
(10, 8, 35, 'Day 1 Sabarimala, Perunthenaruvi Waterfalls,\r\nDay 2\r\n Konni Elephant Camp,\r\nDay 3 Aranmula Parthasarathy Temple\r\n, Day 4\r\n Gavi Forest,Day5\r\n Kakki Reservoi'),
(11, 9, 41, 'Sail through the backwaters of Alappuzha, visiting places such as Vembanad Lake, Marari Beach, Pathiramanal Island, Ambalappuzha Temple, Krishnapuram Palace, and Kuttanad Village.'),
(12, 10, 45, 'Discover Kottayamâ€™s rich culture by visiting places like Kumarakom Bird Sanctuary, Vaikom Temple, Thirunakkara Mahadeva Temple, Illikkal Kallu, Poonjar Palace, and Marmala Waterfalls'),
(13, 19, 48, 'Day 1 \r\nMunnar, \r\nDay 2 \r\nRamakkalmedu, \r\nday 3Vagamon, I\r\nday 4dukki Arch Dam, \r\nday 5  Anamudi Peak.\r\nday 6 Thekkady, ,'),
(14, 11, 9, 'Visit the vibrant spots in and around Kochi like Fort Kochi, Mattancherry Palace, Cherai Beach, Marine Drive, Jewish Synagogue, Boothathankettu reserviour and Thattekad bird sanctuary'),
(15, 12, 61, 'Experience the heritage of Thrissur by visiting Vadakkunnathan Temple, Athirapally Waterfalls, Thrissur Zoo, Guruvayur Temple, Chimmony Wildlife Sanctuary, and Punnathur Kotta'),
(16, 13, 67, 'Explore Palakkadâ€™s beauty by visiting Silent Valley National Park, Palakkad Fort, Malampuzha Dam and Gardens, Parambikulam Wildlife Sanctuary, Nelliyampathy Hills, and Dhoni Waterfalls'),
(17, 14, 73, 'Tour the historical and cultural spots of Malappuram, including Kottakkunnu, Teak Museum, Nilambur, Thirunavaya Temple, Padinharekara Beach, and Kadalundi Bird Sanctuary.	3	3299\r\n'),
(18, 15, 78, 'Visit the historical and natural sites of Kozhikode like Kozhikode Beach, Beypore Port, Kappad Beach, Mananchira Square, Tali Temple, and Peruvannamuzhi Dam\r\n'),
(19, 16, 83, 'Experience Wayanadâ€™s natural beauty by exploring Edakkal Caves, Banasura Sagar Dam, Chembra Peak, Muthanga Wildlife Sanctuary, Pookode Lake, and Kuruva Island.	5	6899\r\n'),
(20, 17, 89, 'Discover Kannurâ€™s charm through places like St. Angelo Fort, Payyambalam Beach, Arakkal Museum, Parassinikkadavu Snake Park, and Ezhimala'),
(21, 18, 94, 'Explore the historical and coastal spots of Kasaragod such as Bekal Fort, Kappil Beach,, Chandragiri Fort, Valiyaparamba Backwaters, and Ranipuram'),
(22, 6, 17, 'Visit the beautiful spots of Thiruvananthapuram such as Kovalam Beach, Padmanabhaswamy Temple, Varkala Cliff, Poovar Island, Napier Museum, and Ponmudi Hill Station'),
(23, 6, 18, 'Visit the beautiful spots of Thiruvananthapuram such as Kovalam Beach, Padmanabhaswamy Temple, Varkala Cliff, Poovar Island, Napier Museum, and Ponmudi Hill Station'),
(25, 6, 24, 'Visit the beautiful spots of Thiruvananthapuram such as Kovalam Beach, Padmanabhaswamy Temple, Varkala Cliff, Poovar Island, Napier Museum, and Ponmudi Hill Station'),
(27, 22, 19, 'Day 1 explore places like ,neyyar wildlife scantuary,\r\nDay2  velliyani lake,varkla cliff'),
(28, 22, 14, 'Day 1 explore places like ,neyyar wildlife scantuary,\r\nDay2  velliyani lake,varkla cliff,town etc'),
(29, 7, 26, ' Day1 :Jatayu Earth Center,Day 2: Kollam Beach,Thangassery Lighthouse ,Day 3 :Palaruvi Waterfalls, Day 4:  Munroe Island'),
(30, 7, 27, ' Day1 :Jatayu Earth Center,Day 2: Kollam Beach,Thangassery Lighthouse ,Day 3 :Palaruvi Waterfalls, Day 4:  Munroe Island'),
(31, 7, 28, ' Day1 :Jatayu Earth Center,Day 2: Kollam Beach,Thangassery Lighthouse ,Day 3 :Palaruvi Waterfalls, Day 4:  Munroe Island'),
(32, 7, 29, ' Day1 :Jatayu Earth Center,Day 2: Kollam Beach,Thangassery Lighthouse ,Day 3 :Palaruvi Waterfalls, Day 4:  Munroe Island'),
(33, 7, 30, ' Day1 :Jatayu Earth Center,Day 2: Kollam Beach,Thangassery Lighthouse ,Day 3 :Palaruvi Waterfalls, Day 4:  Munroe Island'),
(34, 8, 31, 'spiritual and scenic destinations like Sabarimala, Day 1 :Perunthenaruvi Waterfalls,  Day 2:Konni Elephant Camp,Day 3:  Aranmula Parthasarathy Temple, Day 4 :Gavi Forest, Day 5: Kakki Reservoir.'),
(35, 8, 32, 'spiritual and scenic destinations like Sabarimala, Day 1 :Perunthenaruvi Waterfalls,  Day 2:Konni Elephant Camp,Day 3:  Aranmula Parthasarathy Temple, Day 4 :Gavi Forest, Day 5: Kakki Reservoir.'),
(36, 8, 33, 'spiritual and scenic destinations like Sabarimala, Day 1 :Perunthenaruvi Waterfalls,  Day 2:Konni Elephant Camp,Day 3:  Aranmula Parthasarathy Temple, Day 4 :Gavi Forest, Day 5: Kakki Reservoir.'),
(37, 8, 34, 'spiritual and scenic destinations like Sabarimala, Day 1 :Perunthenaruvi Waterfalls,  Day 2:Konni Elephant Camp,Day 3:  Aranmula Parthasarathy Temple, Day 4 :Gavi Forest, Day 5: Kakki Reservoir.'),
(38, 8, 36, 'spiritual and scenic destinations like Sabarimala, Day 1 :Perunthenaruvi Waterfalls,  Day 2:Konni Elephant Camp,Day 3:  Aranmula Parthasarathy Temple, Day 4 :Gavi Forest, Day 5: Kakki Reservoir.'),
(39, 9, 37, 'Day 1: Vembanad Lake, Marari Beach, Day2:  Pathiramanal Island, Day 3: Ambalappuzha Temple, Krishnapuram Palace, Day 4: Kuttanad Village.'),
(40, 9, 38, 'Day 1: Vembanad Lake, Marari Beach, Day2:  Pathiramanal Island, Day 3: Ambalappuzha Temple, Krishnapuram Palace, Day 4: Kuttanad Village.'),
(41, 9, 39, 'Day 1: Vembanad Lake, Marari Beach, Day2:  Pathiramanal Island, Day 3: Ambalappuzha Temple, Krishnapuram Palace, Day 4: Kuttanad Village.'),
(42, 9, 40, 'Day 1: Vembanad Lake, Marari Beach, Day2:  Pathiramanal Island, Day 3: Ambalappuzha Temple, Krishnapuram Palace, Day 4: Kuttanad Village.'),
(43, 10, 42, 'Day 1: Kumarakom Bird Sanctuary, Day 2: Vaikom Temple, \r\n Day 3: Thirunakkara Mahadeva Temple, Day 4: Illikkal Kallu, Day 5:  Poonjar Palace,  Day 6: Marmala Waterfalls'),
(44, 10, 43, 'Day 1: Kumarakom Bird Sanctuary, Day 2: Vaikom Temple, \r\n Day 3: Thirunakkara Mahadeva Temple, Day 4: Illikkal Kallu, Day 5:  Poonjar Palace,  Day 6: Marmala Waterfalls'),
(45, 10, 44, 'Day 1: Kumarakom Bird Sanctuary, Day 2: Vaikom Temple, \r\n Day 3: Thirunakkara Mahadeva Temple, Day 4: Illikkal Kallu, Day 5:  Poonjar Palace,  Day 6: Marmala Waterfalls'),
(46, 10, 46, 'Day 1: Kumarakom Bird Sanctuary, Day 2: Vaikom Temple, \r\n Day 3: Thirunakkara Mahadeva Temple, Day 4: Illikkal Kallu, Day 5:  Poonjar Palace,  Day 6: Marmala Waterfalls'),
(47, 10, 47, 'Day 1: Kumarakom Bird Sanctuary, Day 2: Vaikom Temple, \r\n Day 3: Thirunakkara Mahadeva Temple, Day 4: Illikkal Kallu, Day 5:  Poonjar Palace,  Day 6: Marmala Waterfalls'),
(48, 19, 49, 'Day 1: Munnar, Day 2: Thekkady, Day3 : Ramakkalmedu, Day 4:Vagamon, Day 5: Idukki Arch Dam, Day 6: Anamudi Peak.'),
(49, 19, 50, 'Day 1: Munnar, Day 2: Thekkady, Day3 : Ramakkalmedu, Day 4:Vagamon, Day 5: Idukki Arch Dam, Day 6: Anamudi Peak.'),
(50, 19, 51, 'Day 1: Munnar, Day 2: Thekkady, Day3 : Ramakkalmedu, Day 4:Vagamon, Day 5: Idukki Arch Dam, Day 6: Anamudi Peak.'),
(51, 19, 52, 'Day 1: Munnar, Day 2: Thekkady, Day3 : Ramakkalmedu, Day 4:Vagamon, Day 5: Idukki Arch Dam, Day 6: Anamudi Peak.'),
(52, 19, 53, 'Day 1: Munnar, Day 2: Thekkady, Day3 : Ramakkalmedu, Day 4:Vagamon, Day 5: Idukki Arch Dam, Day 6: Anamudi Peak.'),
(53, 11, 54, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(54, 11, 55, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(55, 11, 56, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(56, 11, 57, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(57, 11, 58, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(58, 11, 59, 'Day 1: Fort Kochi, Mattancherry Palace, Cherai Beach, Day 2: Marine Drive, Jewish Synagogue, Day 3 :Boothathankettu reserviour and Thattekad bird sanctuary'),
(59, 12, 60, 'Day1 :Vadakkunnathan Temple, Athirapally Waterfalls, Day 2:Thrissur Zoo, Guruvayur Temple, Day 3: Chimmony Wildlife Sanctuary, \r\n Day 4: Punnathur Kotta'),
(60, 12, 62, 'Day1 :Vadakkunnathan Temple, Athirapally Waterfalls, Day 2:Thrissur Zoo, Guruvayur Temple, Day 3: Chimmony Wildlife Sanctuary, \r\n Day 4: Punnathur Kotta'),
(61, 12, 63, 'Day1 :Vadakkunnathan Temple, Athirapally Waterfalls, Day 2:Thrissur Zoo, Guruvayur Temple, Day 3: Chimmony Wildlife Sanctuary, \r\n Day 4: Punnathur Kotta'),
(62, 12, 64, 'Day1 :Vadakkunnathan Temple, Athirapally Waterfalls, Day 2:Thrissur Zoo, Guruvayur Temple, Day 3: Chimmony Wildlife Sanctuary, \r\n Day 4: Punnathur Kotta'),
(63, 12, 65, 'Day1 :Vadakkunnathan Temple, Athirapally Waterfalls, Day 2:Thrissur Zoo, Guruvayur Temple, Day 3: Chimmony Wildlife Sanctuary, \r\n Day 4: Punnathur Kotta'),
(64, 13, 66, 'Day 1: Silent Valley National Park,Day 2: Palakkad Fort, Malampuzha Dam and Gardens, Day 3: Parambikulam Wildlife Sanctuary, Day 4 :Nelliyampathy Hills, Day 5: Dhoni Waterfalls.'),
(65, 13, 68, 'Day 1: Silent Valley National Park,Day 2: Palakkad Fort, Malampuzha Dam and Gardens, Day 3: Parambikulam Wildlife Sanctuary, Day 4 :Nelliyampathy Hills, Day 5: Dhoni Waterfalls.'),
(66, 13, 69, 'Day 1: Silent Valley National Park,Day 2: Palakkad Fort, Malampuzha Dam and Gardens, Day 3: Parambikulam Wildlife Sanctuary, Day 4 :Nelliyampathy Hills, Day 5: Dhoni Waterfalls.'),
(67, 13, 70, 'Day 1: Silent Valley National Park,Day 2: Palakkad Fort, Malampuzha Dam and Gardens, Day 3: Parambikulam Wildlife Sanctuary, Day 4 :Nelliyampathy Hills, Day 5: Dhoni Waterfalls.'),
(68, 13, 71, 'Day 1: Silent Valley National Park,Day 2: Palakkad Fort, Malampuzha Dam and Gardens, Day 3: Parambikulam Wildlife Sanctuary, Day 4 :Nelliyampathy Hills, Day 5: Dhoni Waterfalls.'),
(69, 14, 72, 'Day 1 :Kottakkunnu, Teak Museum, Nilambur,Day 2: Thirunavaya Temple, Padinharekara Beach, and Day 3 :Kadalundi Bird Sanctuary.'),
(70, 14, 74, 'Day 1 :Kottakkunnu, Teak Museum, Nilambur,Day 2: Thirunavaya Temple, Padinharekara Beach, and Day 3 :Kadalundi Bird Sanctuary.'),
(71, 14, 75, 'Day 1 :Kottakkunnu, Teak Museum, Nilambur,Day 2: Thirunavaya Temple, Padinharekara Beach, and Day 3 :Kadalundi Bird Sanctuary.'),
(72, 14, 76, 'Day 1 :Kottakkunnu, Teak Museum, Nilambur,Day 2: Thirunavaya Temple, Padinharekara Beach, and Day 3 :Kadalundi Bird Sanctuary.'),
(73, 14, 77, 'Day 1 :Kottakkunnu, Teak Museum, Nilambur,Day 2: Thirunavaya Temple, Padinharekara Beach, and Day 3 :Kadalundi Bird Sanctuary.'),
(74, 23, 81, 'Explore manachira square with loved ones'),
(75, 15, 79, 'Day 1 :Kozhikode Beach, Beypore Port Day 2:, Kappad Beach,  Tali Temple,Day 3: and Peruvannamuzhi Dam.'),
(76, 15, 80, 'Day 1 :Kozhikode Beach, Beypore Port Day 2:, Kappad Beach,  Tali Temple,Day 3: and Peruvannamuzhi Dam.'),
(77, 15, 82, 'Day 1 :Kozhikode Beach, Beypore Port Day 2:, Kappad Beach,  Tali Temple,Day 3: and Peruvannamuzhi Dam.'),
(78, 16, 84, 'Day 1: Edakkal Caves, Banasura Sagar Dam, Day 2: Chembra Peak, Day 3: Muthanga Wildlife Sanctuary,Day 4: Pookode Lake, Day 5: Kuruva Island.'),
(79, 16, 85, 'Day 1: Edakkal Caves, Banasura Sagar Dam, Day 2: Chembra Peak, Day 3: Muthanga Wildlife Sanctuary,Day 4: Pookode Lake, Day 5: Kuruva Island.'),
(80, 16, 86, 'Day 1: Edakkal Caves, Banasura Sagar Dam, Day 2: Chembra Peak, Day 3: Muthanga Wildlife Sanctuary,Day 4: Pookode Lake, Day 5: Kuruva Island.'),
(81, 16, 87, 'Day 1: Edakkal Caves, Banasura Sagar Dam, Day 2: Chembra Peak, Day 3: Muthanga Wildlife Sanctuary,Day 4: Pookode Lake, Day 5: Kuruva Island.'),
(82, 16, 88, 'Day 1: Edakkal Caves, Banasura Sagar Dam, Day 2: Chembra Peak, Day 3: Muthanga Wildlife Sanctuary,Day 4: Pookode Lake, Day 5: Kuruva Island.'),
(83, 17, 90, 'Day 1: St. Angelo Fort, Day 2:Payyambalam Beach,Day 3: Arakkal Museum, Day 4: Parassinikkadavu Snake Park, and Ezhimala'),
(84, 17, 91, 'Day 1: St. Angelo Fort, Day 2:Payyambalam Beach,Day 3: Arakkal Museum, Day 4: Parassinikkadavu Snake Park, and Ezhimala'),
(85, 17, 92, 'Day 1: St. Angelo Fort, Day 2:Payyambalam Beach,Day 3: Arakkal Museum, Day 4: Parassinikkadavu Snake Park, and Ezhimala'),
(86, 17, 93, 'Day 1: St. Angelo Fort, Day 2:Payyambalam Beach,Day 3: Arakkal Museum, Day 4: Parassinikkadavu Snake Park, and Ezhimala'),
(87, 18, 95, 'Day 1:Bekal Fort, Kappil Beach,, Chandragiri Fort, Day 2:  Valiyaparamba Backwaters, and Ranipuram'),
(88, 18, 97, 'Day 1:Bekal Fort, Kappil Beach,, Chandragiri Fort, Day 2:  Valiyaparamba Backwaters, and Ranipuram'),
(89, 18, 98, 'Day 1:Bekal Fort, Kappil Beach,, Chandragiri Fort, Day 2:  Valiyaparamba Backwaters, and Ranipuram'),
(90, 18, 99, 'Day 1:Bekal Fort, Kappil Beach,, Chandragiri Fort, Day 2:  Valiyaparamba Backwaters, and Ranipuram'),
(91, 24, 96, 'Morning 8:30 rituals time! , A feel good destination for inner peace and  peaceful time spending');

-- --------------------------------------------------------

--
-- Table structure for table `tbltravelguidereg`
--

DROP TABLE IF EXISTS `tbltravelguidereg`;
CREATE TABLE IF NOT EXISTS `tbltravelguidereg` (
  `Travelguide_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Photo` varchar(2000) NOT NULL,
  `House_name` varchar(50) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Idproof` varchar(2000) NOT NULL,
  `Regdate` date NOT NULL,
  `Location_id` int(11) NOT NULL,
  `Profile` varchar(2000) NOT NULL,
  `PCC` varchar(2000) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Travelguide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltravelguidereg`
--

INSERT INTO `tbltravelguidereg` (`Travelguide_id`, `Name`, `Photo`, `House_name`, `Pincode`, `Phone`, `Email`, `Idproof`, `Regdate`, `Location_id`, `Profile`, `PCC`, `Username`, `Password`, `Status`) VALUES
(5, 'subin', 'subin.jpeg', 'subinis home', 896547, 9946457805, 'bookphone606@gmail.com', 'adhaar.pdf', '2024-09-07', 4, 'profile.jpeg', 'PCC.jpeg', 'subin123', 'subin123', 'Verified'),
(6, 'George C.J', 'p3.jpeg', 'vadakath(H)', 686691, 8523697410, 'g6548630@gmail.com', 'aadhar.png', '2024-09-26', 5, 'profile.jpeg', 'PCC.jpeg', 'George606', 'George606', 'Rejected'),
(7, 'Rahul J christy', 'rahul.jpeg', 'veliyaveetil', 686690, 9945781236, 'josephpaul1atmattakattil@gmail.com', 'aadhar.png', '2024-10-09', 76, 'profile.jpeg', 'PCC.jpeg', 'Raahul123', 'Raahul123', 'Verified'),
(8, 'Ronet siby', 'p4.jpeg', 'ezhatveyil', 686614, 9946457125, 'orgbussines@gmail.com', 'aadhar.png', '2024-10-14', 3, 'profile.jpeg', 'PCC.jpeg', 'Ronet123', 'Ronet123', 'Verified'),
(9, 'Joseph Paul', 'Joseph.jpg', 'ezhatveyil', 686614, 9946457125, 'josephpaul1atmattakattil@gmail.com', 'aadhar.png', '2024-10-15', 80, 'profile.jpeg', 'PCC.jpeg', 'Josep123', 'Josep123', 'Verified'),
(11, 'Jenson James', 'aromal.jpeg', 'Vadakkencheriyil', 685608, 8078726466, 'johnycv7085@gmail.com', 'aadhar.png', '2024-10-29', 76, 'profile.jpeg', 'PCC.jpeg', 'jenson', 'Jenson123', 'Verified'),
(12, 'Joel K Jose', 'WhatsApp Image 2024-11-06 at 23.52.22_88577973.jpg', 'Varakattil H', 682030, 8891200711, '', 'aadhaar-card.jpg', '2025-01-06', 70, 'aadhaar-card.jpg', '2.jpg', 'Jose1234', 'Jose1234', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `tblturistspot`
--

DROP TABLE IF EXISTS `tblturistspot`;
CREATE TABLE IF NOT EXISTS `tblturistspot` (
  `turistspot_id` int(11) NOT NULL AUTO_INCREMENT,
  `turistspot_name` varchar(100) NOT NULL,
  `turistspot_photo` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`turistspot_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblturistspot`
--

INSERT INTO `tblturistspot` (`turistspot_id`, `turistspot_name`, `turistspot_photo`, `district_id`) VALUES
(5, 'Athirappilly & Vazhachal Waterfalls ', 'Athirappilly & Vazhachal Waterfalls.jpg', 7),
(9, 'Fort Kochi', 'Fort Kochi.jpeg', 7),
(14, 'Varkala', 'Cochin Heritage.jpg', 1),
(17, 'Sree Padmanabhaswamy Temple', 'temple thiruvanthapuram.jpg', 1),
(18, 'Kovalam Beach', 'kovalam beach.jpeg', 1),
(19, ' Neyyar Wildlife Sanctuary', 'neyyar-wildlife-sanctuary-trivandrum-tourism-entry-fee-timings-holidays-reviews-header.jpg', 1),
(20, 'Napier Museum', 'napeir museam.jpg', 1),
(21, 'Vellayani Lake', 'vellyanilake.jpeg', 1),
(22, 'varkala cliff', 'varkallacliff.jpg', 1),
(23, 'Poovar Island', 'poovar island.jpg', 1),
(24, 'Ponmudi Hill Station', 'ponmudi-hill-station.jpg', 1),
(26, 'Kollam Beach', 'kollam beach.jpeg', 2),
(27, 'Jatayu Earth Center', 'jatayuearth.jpeg', 2),
(28, 'Palaruvi Waterfalls', 'palluruvi waterfalls.jpeg', 2),
(29, 'Thangassery Lighthouse', 'lighthouse.jpeg', 2),
(30, 'Munroe island', 'munnore island.jpeg', 2),
(31, 'Sabarimala', 'sabarimala.jpeg', 3),
(32, 'Perunthenaruvi Waterfalls', 'peruthenaruvi waterfalls.jpeg', 3),
(33, 'Konni Elephant Camp', 'elephant camp.jpeg', 3),
(34, 'Aranmula Parthasarathy Temple', 'aranmula temple.jpeg', 3),
(35, 'Gavi Forest', 'gavi forest.jpeg', 3),
(36, ' Kakki Reservoir', 'kakki dam.jpeg', 3),
(37, 'Vembanad Lake', 'vembanadu lake.jpeg', 4),
(38, 'Marari Beach', 'mararibeach.jpeg', 4),
(39, 'Pathiramanal Island', 'pathiramanal island.jpeg', 4),
(40, 'Krishnapuram Palace', 'Krishnapuram Palace.jpeg', 4),
(41, 'KuttanadÂ Village', 'kuttanad village.jpeg', 4),
(42, 'Kumarakom Bird Sanctuary', 'Kumarakom Bird Sanctuary.jpeg', 5),
(43, 'Vaikom Temple', 'vaikom.jpeg', 5),
(44, 'Thirunakkara Mahadeva Temple', 'Thirunakkara Mahadeva Temple.jpeg', 5),
(45, 'Illikkal Kallu', 'Illikkal Kallu.jpeg', 5),
(46, 'Poonjar Palace', 'Poonjar Palace.jpeg', 5),
(47, 'Marmala Waterfalls.', 'Marmala Waterfalls..jpeg', 5),
(48, 'Munnar', 'munnar.jpeg', 6),
(49, 'Thekkady', 'Thekkady.jpeg', 6),
(50, 'Ramakkalmedu', 'Ramakkalmedu.jpeg', 6),
(51, ' Vagamon', 'vagamon.jpeg', 6),
(52, 'Idukki Arch Dam', 'Idukki Arch Dam.jpeg', 6),
(53, 'Anamudi Peak', 'Anamudi Peak.jpeg', 6),
(54, 'Mattancherry Palace', 'Mattancherry Palace.jpeg', 7),
(55, 'Cherai Beach', 'Cherai Beach.jpeg', 7),
(56, 'Marine Drive', 'Marine Drive.jpeg', 7),
(57, 'Jewish Synagogue', 'Jewish Synagogue.jpeg', 7),
(58, 'Thattekad bird sanctuary', 'Thattekad.jpeg', 7),
(59, 'Bhoothathankettu', 'bhoothathankettu.jpeg', 7),
(60, 'Vadakkunnathan Temple', 'Vadakkunnathan Temple.jpeg', 8),
(61, 'Athirapally Waterfalls', 'Athirapally Waterfalls.jpeg', 8),
(62, 'Thrissur Zoo', 'Thrissur Zoo.jpeg', 8),
(63, 'Guruvayur Temple', 'Guruvayur Temple.jpeg', 8),
(64, 'Chimmony Wildlife Sanctuary', 'Chimmony Wildlife Sanctuary.jpeg', 8),
(65, 'Punnathur Kotta.', 'Punnathur Kotta..jpeg', 8),
(66, ' Silent Valley National Park', 'Silent Valley National Park.jpeg', 9),
(67, 'Palakkad Fort', 'Palakkad Fort.jpeg', 9),
(68, 'Malampuzha Dam and Gardens', 'Malampuzha Dam and Gardens.jpeg', 9),
(69, ' Parambikulam Wildlife Sanctuary', 'Parambikulam Wildlife Sanctuary.jpeg', 9),
(70, 'Nelliyampathy Hills,', 'Nelliyampathy Hills,.jpeg', 9),
(71, 'Dhoni Waterfalls', 'Dhoni Waterfalls.jpeg', 9),
(72, 'Kottakkunnu', 'Kottakkunnu.jpeg', 10),
(73, 'Teak Museum', 'Teak Museum.jpeg', 10),
(74, 'Nilambur', 'Nilambur.jpeg', 10),
(75, 'Thirunavaya Temple', 'Thirunavaya Temple.jpeg', 10),
(76, 'Padinharekara Beach', 'Padinharekara Beach.jpeg', 10),
(77, 'Kadalundi Bird Sanctuary', 'Kadalundi Bird Sanctuary.jpeg', 10),
(78, 'Kozhikode Beach', 'kozhikode.jpeg', 11),
(79, 'Beypore Port', 'Beypore Port.jpeg', 11),
(80, 'Kappad Beach', 'Kappad Beach.jpeg', 11),
(81, 'Mananchira Square', 'Mananchira Square.jpeg', 10),
(82, 'Peruvannamuzhi Dam.', 'Peruvannamuzhi Dam..jpeg', 11),
(83, 'Edakkal Caves', 'Edakkal Caves.jpeg', 12),
(84, ' Banasura Sagar Dam', 'Banasura Sagar Dam.jpeg', 12),
(85, 'Chembra Peak', 'Chembra Peak.jpeg', 12),
(86, 'Muthanga Wildlife Sanctuary', 'Muthanga Wildlife Sanctuary.jpeg', 12),
(87, 'Pookode Lake', 'Pookode Lake,.jpeg', 12),
(88, 'Kuruva Island', 'Kuruva Island.jpeg', 12),
(89, 'St. Angelo Fort', 'StAngelFort.jpeg', 13),
(90, ' Payyambalam Beach', 'Payyambalam Beach.jpeg', 13),
(91, 'Arakkal Museum', 'Arakkal Museum.jpeg', 13),
(92, 'Parassinikkadavu Snake Park', 'Parassinikkadavu Snake Park.jpeg', 13),
(93, ' Ezhimala', 'Ezhimala.jpeg', 13),
(94, 'Bekal Fort', 'Bekal Fort.jpeg', 14),
(95, 'Kappil Beach', 'Kappil Beach.jpeg', 14),
(96, 'Ananthapura Lake Temple', 'Ananthapura Lake Temple.jpeg', 14),
(97, 'Chandragiri Fort', 'Chandragiri Fort.jpeg', 14),
(98, 'Valiyaparamba Backwaters', 'Valiyaparamba Backwaters.jpeg', 14),
(99, 'Ranipuram', 'Ranipuram.jpeg', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
