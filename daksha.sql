-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 06:44 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `di_id` int(11) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`di_id`, `district`) VALUES
(1, 'trivandrum'),
(2, 'kollam'),
(3, 'pathanamthitta'),
(4, 'alappuzha'),
(5, 'kottayam'),
(6, 'idukki'),
(7, 'ernakulam'),
(8, 'thrissur'),
(9, 'palakkad'),
(10, 'malappuram'),
(11, 'calicut'),
(12, 'wayanad'),
(13, 'kannur'),
(14, 'kasargod'),
(15, 'aluva');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `e_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`e_id`, `event`) VALUES
(1, 'Mappilapattu - (5 mins)'),
(3, 'Light Music - (5 mins)'),
(5, 'Classical Music -(10 mins)'),
(7, 'Kadhaprasangam (15 mins)'),
(8, 'Mimicry (5 mins)'),
(9, 'Keralanadanam (15 mins)'),
(10, 'Thullal (10 mins)'),
(11, 'Kadhakali (15 mins)'),
(13, 'Folk Dance - (10 mins)'),
(14, 'Bharatanatyam (15 mins)'),
(15, 'Classical Dance (Kuchipudi, Odissi) (15 mins)'),
(16, 'Mohiniyattam (15 mins)'),
(18, 'Recitation (5 mins)'),
(19, 'String Western - Violin, Guitar (10 mins)'),
(20, 'Wind Western - Harmonium (10 mins)'),
(21, 'Triple Drum  (10 mins)'),
(22, 'Jazz (10 mins)'),
(23, 'Percusion Type - Eastern - Chenda, Edakka (10 mins');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `g_id` int(11) NOT NULL,
  `list` varchar(50) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`g_id`, `list`, `district`) VALUES
(5, 'Skit - English/ Hindi (10 mins)', 'kannur'),
(6, 'Malayalam Drama (30 mins)', 'kannur'),
(7, 'Malayalam Drama (30 mins)', 'kannur'),
(9, 'Group Song - Indian (10 mins)', 'thrissur'),
(10, 'Mime Drama (5 mins)', 'thrissur'),
(11, 'ParichamuttuKali (10 mins)', 'thrissur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_judge`
--

CREATE TABLE `tbl_judge` (
  `ju_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phno` bigint(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `exp` varchar(10) NOT NULL,
  `event_a` varchar(50) NOT NULL,
  `event_b` varchar(50) NOT NULL,
  `event_c` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_judge`
--

INSERT INTO `tbl_judge` (`ju_id`, `fname`, `lname`, `phno`, `email`, `exp`, `event_a`, `event_b`, `event_c`) VALUES
(18, 'devika', 'kumar', 9656478965, 'devika@gmail.com', 'SINGER', 'Mappilapattu - Male (5 mins)', 'Classical Music - Men(10 mins)', 'Light Music - Men (5 mins)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `utype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `email`, `password`, `status`, `utype_id`) VALUES
(1, 'admin@gmail.com', 'admin', 0, 1),
(13, 'tebin@gmail.com', '123456', 0, 3),
(14, 'rajitha@gmail.com', '123456', 0, 4),
(17, 'hashim@gmail.com', '123456', 0, 2),
(18, 'abijith@gmail.com', '123456', 0, 3),
(19, 'shiju@gmail.com', '123456', 0, 2),
(20, 'amal@gmail.com', '123456', 0, 4),
(21, 'kiran@gmail.com', '123456', 0, 2),
(22, 'akshay@gmail.com', '123456', 0, 3),
(23, 'athul@gmail.com', '123456', 0, 3),
(24, 'sebin@gmail.com', '123456', 0, 4),
(25, 'shankar@gmail.com', '123456', 0, 3),
(26, 'shan@gmail.com', '123456', 0, 3),
(27, 'kkiran@gmail.com', '123456', 0, 4),
(29, 'kamal@gmail.com', '1234556', 0, 3),
(32, 'aleena@gmail.com', '123456', 0, 4),
(33, 'seban@gmail.com', '123456', 0, 2),
(36, 'devanand@gmail.com', '123456', 0, 3),
(37, 'rejul@gmail.com', '123456', 0, 3),
(38, 'saurav@gmail.com', '123456', 0, 3),
(39, 'ravi@gmail.com', '123456', 0, 3),
(40, 'ragu@gmail.com', '123456', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_point`
--

CREATE TABLE `tbl_point` (
  `point_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_point`
--

INSERT INTO `tbl_point` (`point_id`, `event`, `uid`, `mark`) VALUES
(108, 'Mimicry (5 mins)', 15, 32),
(109, 'Mimicry (5 mins)', 16, 36),
(110, 'Mimicry (5 mins)', 17, 38),
(111, 'Mimicry (5 mins)', 18, 40),
(112, 'Mimicry (5 mins)', 19, 42),
(113, 'Kadhaprasangam (15 mins)', 15, 38),
(114, 'Kadhaprasangam (15 mins)', 16, 34),
(115, 'Kadhaprasangam (15 mins)', 17, 35),
(116, 'Kadhaprasangam (15 mins)', 18, 42);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prog`
--

CREATE TABLE `tbl_prog` (
  `pr_id` int(11) NOT NULL,
  `gname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prog`
--

INSERT INTO `tbl_prog` (`pr_id`, `gname`) VALUES
(1, 'Group Song - Indian (10 mins)'),
(2, 'Group Song - Western (10 mins)'),
(3, 'Kolkkali (10 mins)'),
(4, 'Daffmuttu (10 mins)'),
(5, 'Oppana - Men (10 mins)'),
(6, 'Oppana - women (10 mins)'),
(7, 'Group Dance - Men (10 mins)'),
(8, 'Group Dance - Women (10 mins)'),
(9, 'Thiruvathirakali (10 mins)'),
(10, 'Margamkali (10 mins)'),
(11, 'Mime Drama (5 mins)'),
(12, 'Malayalam Drama (30 mins)'),
(13, 'English Drama (30 mins)'),
(14, 'Hindi Drama (30 mins)'),
(15, 'Pookkalam - Flower Carpet (3 hrs)'),
(16, 'ParichamuttuKali (10 mins)'),
(17, 'Folk Orchestra (10 mins)'),
(18, 'Skit - English/ Hindi (10 mins)'),
(19, 'poorakkali (10 mins)'),
(20, 'Koodiyattam (10 mins)'),
(21, 'Patriotic Song(5 mins)'),
(22, 'Ganamela(10 mins)'),
(23, 'Chendamelam(10 mins)'),
(24, 'Panchavadyam(20 mins)'),
(25, 'Band Melam(20 mins)'),
(26, 'Chenda/ thayampakam(10 mins)'),
(27, 'Maddalam(10 mins)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`eid`, `uid`, `a`, `b`, `c`) VALUES
(19, 6, 'Mappilapattu - (5 mins)', 'Jazz (10 mins)', 'Kadhakali (15 mins)'),
(20, 8, 'Mappilapattu - (5 mins)', 'Wind Western - Harmonium (10 mins)', 'String Western - Violin, Guitar (10 mins)'),
(21, 15, 'Mimicry (5 mins)', 'Kadhaprasangam (15 mins)', 'Keralanadanam (15 mins)'),
(22, 16, 'Kadhaprasangam (15 mins)', 'Keralanadanam (15 mins)', 'Mimicry (5 mins)'),
(23, 17, 'Kadhaprasangam (15 mins)', 'Mimicry (5 mins)', 'Keralanadanam (15 mins)'),
(24, 18, 'Keralanadanam (15 mins)', 'Mimicry (5 mins)', 'Kadhaprasangam (15 mins)'),
(25, 19, 'Mimicry (5 mins)', 'Keralanadanam (15 mins)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rep`
--

CREATE TABLE `tbl_rep` (
  `r_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `d_id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rep`
--

INSERT INTO `tbl_rep` (`r_id`, `fname`, `lname`, `d_id`, `phone`, `login_id`) VALUES
(6, 'hashim', 'aswin', 13, 9645826541, 17),
(7, 'shiju', 'joseph', 8, 9048100108, 19),
(8, 'kiran', 'babu', 7, 9562321456, 21),
(9, 'sebastian', 'B', 12, 9658965474, 33);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sch`
--

CREATE TABLE `tbl_sch` (
  `pid` int(11) NOT NULL,
  `list` varchar(50) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `date1` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sch`
--

INSERT INTO `tbl_sch` (`pid`, `list`, `stage`, `date1`, `time`) VALUES
(4, 'Light Music - Men (5 mins)', 'stage three', '2022-02-26', '22:00:00'),
(6, 'poorakkali (10 mins)', 'stage three', '2022-02-28', '12:00:00'),
(7, 'Thullal (10 mins)', 'stage two', '2022-03-02', '21:00:00'),
(8, 'Mohiniyattam (15 mins)', 'stage three', '2022-03-02', '10:30:00'),
(12, 'Kolkkali (10 mins)', 'stage one', '2022-05-27', '09:30:00'),
(13, 'Group Song - Indian (10 mins)', 'stage one', '2022-06-20', '17:00:00'),
(20, 'Recitation (5 mins)', 'stage one', '2022-06-16', '15:00:00'),
(21, 'Triple Drum  (10 mins)', 'stage one', '2022-06-29', '14:00:00'),
(22, 'Mimicry (5 mins)', 'stage one', '2022-06-23', '15:00:00'),
(23, 'Light Music - Women (10 mins)', 'stage one', '2022-07-01', '15:00:00'),
(24, 'Kadhakali (15 mins)', 'stage four', '2022-07-13', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `fname`, `lname`, `phone`, `login_id`) VALUES
(3, 'rajitha', 'shivan', 9562654789, 14),
(4, 'amal', 'sabu', 9048562145, 20),
(5, 'SEBIN', 'CHACKO', 9654879654, 24),
(6, 'kiran', 'babu', 9654897456, 27),
(8, 'aleena', 'mathews', 9654213654, 32);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`uid`, `fname`, `lname`, `dob`, `gender`, `district`, `phone`, `login_id`) VALUES
(6, 'Tebin', 'joseph', '1998-03-12', 'male', '13', 9496146589, 13),
(7, 'abijith', 'km', '2000-04-05', 'male', '8', 9645897897, 18),
(8, 'akshay', 'k', '1999-08-05', 'male', '12', 9496259998, 22),
(9, 'athul', 'c', '2002-08-12', 'male', '13', 9645896541, 23),
(10, 'shankar', 'lal', '2001-06-06', 'male', '8', 9961546879, 25),
(11, 'shan', 'va', '1999-08-06', 'male', '5', 9654789654, 26),
(15, 'devanand', 'p k', '2004-12-09', 'male', '1', 9689541456, 36),
(16, 'rejul', 'raj', '2003-02-05', 'male', '2', 9874563221, 37),
(17, 'saurav', 'raj', '2004-12-27', 'male', '3', 9567896542, 38),
(18, 'ravi', 'kumar', '2003-02-02', 'male', '4', 9658987456, 39),
(19, 'ragu', 'nath', '2004-12-28', 'male', '5', 9048175456, 40);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `utype_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`utype_id`, `user_type`) VALUES
(1, 'admin'),
(2, 'rep'),
(3, 'users'),
(4, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`di_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `tbl_judge`
--
ALTER TABLE `tbl_judge`
  ADD PRIMARY KEY (`ju_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `utype_id` (`utype_id`);

--
-- Indexes for table `tbl_point`
--
ALTER TABLE `tbl_point`
  ADD PRIMARY KEY (`point_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tbl_prog`
--
ALTER TABLE `tbl_prog`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`utype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `di_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_judge`
--
ALTER TABLE `tbl_judge`
  MODIFY `ju_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_point`
--
ALTER TABLE `tbl_point`
  MODIFY `point_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tbl_prog`
--
ALTER TABLE `tbl_prog`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`utype_id`) REFERENCES `usertype` (`utype_id`);

--
-- Constraints for table `tbl_point`
--
ALTER TABLE `tbl_point`
  ADD CONSTRAINT `tbl_point_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `tb_users` (`uid`);

--
-- Constraints for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD CONSTRAINT `tbl_reg_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `tb_users` (`uid`);

--
-- Constraints for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  ADD CONSTRAINT `tbl_rep_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `tbl_district` (`di_id`);

--
-- Constraints for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD CONSTRAINT `tbl_staff_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
