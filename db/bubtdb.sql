-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 05:18 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kccregdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE `ay` (
  `AY_ID` int(11) NOT NULL,
  `ACADYR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_ID` int(11) NOT NULL,
  `CLASS_CODE` varchar(30) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `TIME` time NOT NULL,
  `IDNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT '',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`) VALUES
(47, 'CSE', 0, 'General', 'nbvchghg', 33),
(48, 'EEE', 0, 'None', 'Electric', 0),
(49, 'EEE', 0, 'General', 'Electrical engineering', 33),
(50, 'Information System', 0, 'General', 'about information systems', 37),
(51, 'AI', 0, 'General', 'Machine and deep learning', 33);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(33, 'IT', 'Information Technology Department'),
(36, 'arts', 'Arts Department'),
(37, 'CSE', 'Computer Science And Engineering'),
(38, 'fdgfxffsd', 'sdssssd'),
(39, 'EEE', 'Electrical and Electronics Engineering'),
(40, 'Economics', 'Economical systems'),
(41, 'Genetic Engineering', 'About biotechnological facts in engineering');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `PRE` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `FIN` int(11) NOT NULL,
  `FIN_AVE` int(11) NOT NULL,
  `REMARKS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `PRE`, `MID`, `FIN`, `FIN_AVE`, `REMARKS`) VALUES
(1, 20004277, 11, 0, 25, 0, 0, 0, 0, 'NONE'),
(2, 20004277, 12, 0, 25, 0, 0, 0, 0, 'NONE'),
(3, 20004277, 26, 0, 0, 0, 0, 0, 0, 'NONE'),
(4, 20004277, 28, 0, 0, 0, 0, 0, 0, 'NONE'),
(5, 124, 421, 0, 0, 0, 0, 0, 0, 'NONE'),
(6, 124, 422, 0, 0, 0, 0, 0, 0, 'NONE'),
(7, 124, 423, 0, 0, 0, 0, 0, 0, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `INST_ID` int(30) NOT NULL,
  `INST_FULLNAME` varchar(255) NOT NULL,
  `INST_ADDRESS` varchar(255) NOT NULL,
  `INST_SEX` varchar(20) NOT NULL DEFAULT 'Male',
  `INST_STATUS` varchar(20) NOT NULL DEFAULT 'Single',
  `SPECIALIZATION` text NOT NULL,
  `INST_EMAIL` varchar(255) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(40) NOT NULL DEFAULT 'Probationary'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INST_ID`, `INST_FULLNAME`, `INST_ADDRESS`, `INST_SEX`, `INST_STATUS`, `SPECIALIZATION`, `INST_EMAIL`, `EMPLOYMENT_STATUS`) VALUES
(1, 'Md.Nazmul Hasan', 'Mitrpur,Dhaka', 'M', 'Single', 'Web specialist', 'Nazmul@gmail.com', 'Lecturer'),
(2, 'Md.Farhad reza', 'mirpur1 ,Dhaka', 'M', 'Single', 'Programming specialist', 'Frahad311@gmail.com', 'Lecturer'),
(3, 'Md.Akash Hossain', 'mirpur 12 ,Dhaka', 'M', 'Single', 'Web Programmer', 'Akash3114@gmail.com', 'Ass.Professor'),
(4, 'Md.Nahid', 'Rupnagar abashik, Dhaka', 'M', 'Single', 'English language specialist', 'Nahid4517@gmail.com', 'Lecturer'),
(5, 'Md.shakib', 'Shealbari,Mirpur 2 ,Dhaka', 'M', 'Single', 'Graphics designer', 'Khan12342@gmail.com', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `YR_ID` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `MAJOR_ID` int(11) NOT NULL,
  `MAJOR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`MAJOR_ID`, `MAJOR`) VALUES
(1, 'English'),
(2, 'General'),
(3, 'Marketing Management'),
(4, 'Financial Management'),
(5, 'Filipino'),
(6, 'Philosophy'),
(7, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `PHOTO_ID` int(11) NOT NULL,
  `FILENAME` text NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SIZE` int(30) NOT NULL,
  `CAPTION` varchar(255) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'RESERVED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(28, '2013-2014', 'First', 14, 0, 'RESERVED', '2018-09-12 13:04:36', '0000-00-00 00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEM_ID` int(11) NOT NULL,
  `SEM` varchar(15) NOT NULL DEFAULT 'First'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(23, 'English 02', 'Developmental Reading 2', 3, 'None', 22, '2013-2014', 'Second'),
(24, 'Math 2', 'Modern College Algebra ', 3, 'None', 22, '2013-2014', 'Second'),
(30, 'Theology 3', 'Liturgy and Sacraments in General', 3, 'None', 23, '2013-2014', 'First'),
(31, 'English 2 ', 'Writing in the Decipline', 3, 'None', 23, '2013-2014', 'First'),
(32, 'English 3', 'Speech Communication', 3, 'None', 23, '2013-2014', 'First'),
(33, 'English 4', 'Interactive English', 3, 'None', 23, '2013-2014', 'First'),
(34, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, 'None', 23, '2013-2014', 'First'),
(35, 'Math 2', 'Plane and Spherical Trig.', 3, 'None', 23, '2013-2014', 'First'),
(38, 'PE 3', 'Individual/ Dual Sports/ Games', 2, 'None', 23, '2013-2014', 'First'),
(39, 'Theology 4', 'Commandments and Christian Morality ', 3, 'None', 23, '2013-2014', 'Second'),
(40, 'English 15', 'Philippine Literature', 3, 'None', 23, '2013-2014', 'Second'),
(41, 'English 7a', 'Effective Writing', 3, 'None', 23, '2013-2014', 'Second'),
(42, 'Filipino 2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, 'None', 23, '2013-2014', 'Second'),
(43, 'Nat. Sci. 4', 'Ecology', 3, 'None', 23, '2013-2014', 'Second'),
(44, 'Philo. 6', 'Philosophy of Nature', 3, 'None', 23, '2013-2014', 'Second'),
(45, 'Philo. 17', 'Special Ethics', 3, 'None', 23, '2013-2014', 'Second'),
(46, 'PE 4', 'Team Sports and Games', 2, 'None', 22, '2013-2014', 'Second'),
(47, 'Theology 5', 'Church History and Church Today', 3, 'None', 24, '2013-2014', 'First'),
(48, 'Filipino 3', 'Masining na Pagpapahayag', 3, 'None', 24, '2013-2014', 'First'),
(49, 'Nat. Sci. 2 ', 'Biological Science', 3, 'None', 24, '2013-2014', 'First'),
(50, 'Philo. 4', 'Theodicy', 3, 'None', 24, '2013-2014', 'First'),
(51, 'Philo. 13', 'History of Ancient Philosophy', 3, 'None', 24, '2013-2014', 'First'),
(52, 'Philo. 8a', 'Philosophical Pyschology', 3, 'None', 24, '2013-2014', 'First'),
(53, 'Educ. 104', 'Principles of Teaching 1', 3, 'None', 24, '2013-2014', 'First'),
(54, 'Computer 1', 'Basic Computer', 3, 'None', 24, '2013-2014', 'First'),
(55, 'Theology 6', 'Social Teaching of the Church', 3, 'None', 24, '2013-2014', 'Second'),
(56, 'English 5', 'Business English and Correspondence', 3, 'None', 24, '2013-2014', 'Second'),
(57, 'English 17', 'World Literature', 3, 'None', 24, '2013-2014', 'Second'),
(58, 'Philo. 14', 'History of Medieval Philosophy', 3, 'None', 24, '2013-2014', 'Second'),
(59, 'Philo. 7', 'Philosophy of Knowledge', 3, 'None', 24, '2013-2014', 'Second'),
(60, 'Philo. 19', 'Philosophy of Education', 3, 'None', 24, '2013-2014', 'Second'),
(61, 'Computer 2', 'Software Application', 3, 'None', 24, '2013-2014', 'Second'),
(62, 'Humanities 2', 'Art Education', 3, 'None', 24, '2013-2014', 'Second'),
(63, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, 'None', 25, '2013-2014', 'First'),
(64, 'Philo.  51', 'Philosophy of Religion', 3, 'None', 25, '2013-2014', 'First'),
(65, 'Philo.  16', 'History of  Modern Philosophy', 3, 'None', 25, '2013-2014', 'First'),
(66, 'Philo.  31', 'Oriental Philosophy', 3, 'None', 25, '2013-2014', 'First'),
(67, 'Economics 1', 'Principles of Economics with TAR', 3, 'None', 25, '2013-2014', 'First'),
(68, 'Educ. 102', 'Facilitating Learning', 3, 'None', 25, '2013-2014', 'First'),
(69, 'Soc. Sci. 19', 'Society and Culture', 3, 'None', 25, '2013-2014', 'Second'),
(70, 'Philo. 18 ', 'History of Contemporary Philosophy ', 3, 'None', 25, '2013-2014', 'Second'),
(71, 'Philo.  9a', 'Social Phylosophy', 3, 'None', 25, '2013-2014', 'Second'),
(72, 'Philo.  20', 'Elements of Filipino Phylosophy', 3, 'None', 25, '2013-2014', 'Second'),
(73, 'Philo.  11', 'Social Phylosophy II: Values Identification & Inculcation (lncl. Institution & Ideologies)', 3, 'None', 25, '2013-2014', 'Second'),
(74, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, 'None', 25, '2013-2014', 'Second'),
(75, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, 'None', 14, '2013-2014', 'First'),
(76, 'English 0', 'English Plus', 3, 'None', 26, '2013-2014', 'First'),
(77, 'English 01 ', 'Developmental Reading', 3, 'None', 26, '2013-2014', 'First'),
(78, 'History 1', 'Philipine History and Culture', 3, 'None', 26, '2013-2014', 'First'),
(79, 'Psycho. 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 3, 'None', 26, '2013-2014', 'First'),
(80, 'Chem. 1', 'General & Inorganic Chemistry', 3, 'None', 26, '2013-2014', 'First'),
(81, 'Economics 1', 'Principles of Economics with TAR', 3, 'None', 26, '2013-2014', 'First'),
(82, 'PE 1', 'Physical Fitness', 2, 'None', 14, '2013-2014', 'First'),
(83, 'NSTP 1', 'NSTP', 3, 'None', 26, '2013-2014', 'First'),
(84, 'Theology 2', 'Bible & Salvation History', 3, 'None', 26, '2013-2014', 'Second'),
(85, 'English 1', 'Study and Thinking Skills', 3, 'None', 26, '2013-2014', 'Second'),
(86, 'English 02', 'Developmental Reading 2', 3, 'None', 26, '2013-2014', 'Second'),
(87, 'Math 2', 'Modern College Algebra', 3, 'None', 26, '2013-2014', 'Second'),
(88, 'Soc. Sci. 19', 'Society and Culture with FP ', 3, 'None', 26, '2013-2014', 'Second'),
(89, 'Nat. Sci. 1', 'Physical Science', 3, 'None', 26, '2013-2014', 'Second'),
(90, 'Educ. 2', 'Child & Adolescent Development', 3, 'None', 26, '2013-2014', 'Second'),
(91, 'PE 2', 'Rhythmic Activities', 2, 'None', 26, '2013-2014', 'Second'),
(92, 'NSTP 2', 'NSTP', 3, 'None', 26, '2013-2014', 'Second'),
(93, 'Theology 3', 'Liturgy and Sacraments in General', 3, 'None', 27, '2013-2014', 'First'),
(94, 'English 2', 'Writing in the Decipline', 3, 'None', 27, '2013-2014', 'First'),
(95, 'English 3', 'Speech and Communication', 3, 'None', 27, '2013-2014', 'First'),
(96, 'English 33a', 'Introduction to Language Study', 3, 'None', 27, '2013-2014', 'First'),
(97, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, 'None', 27, '2013-2014', 'First'),
(98, 'Math 2', 'Plane and Spherical Trigonometry', 3, 'None', 27, '2013-2014', 'First'),
(99, 'Nat. Sci. 2', 'Biological Science', 3, '', 27, '2013-2014', 'First'),
(100, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '', 27, '2013-2014', 'First'),
(101, 'Theology 4', 'Commandments and Christian Morality', 3, '', 27, '2013-2014', 'Second'),
(102, 'English 15', 'Philippine Literature', 3, '', 27, '2013-2014', 'Second'),
(103, 'English 38', 'Mythology and Folklore', 3, '', 27, '2013-2014', 'Second'),
(104, 'English 50', 'Structure of the English Laguage', 3, '', 27, '2013-2014', 'Second'),
(105, 'English 40a', 'Applied Linguistics', 3, '', 27, '2013-2014', 'Second'),
(106, 'English 7a', 'Effective Writing', 3, '', 27, '2013-2014', 'Second'),
(107, 'Filipino 2', 'Pagbasa at Pagsulat tungo sa Pananaliksik', 3, '', 27, '2013-2014', 'Second'),
(108, 'PE 4', 'Team Sports and Games', 2, '', 27, '2013-2014', 'Second'),
(109, 'Theology 5', 'Church History and Church Today', 3, '', 28, '2013-2014', 'First'),
(110, 'English 51', 'Language and Society', 3, '', 28, '2013-2014', 'First'),
(111, 'English 52', 'Cross-Culture Communication', 3, '', 28, '2013-2014', 'First'),
(112, 'English 53', 'Literary History of the Philippines', 3, '', 28, '2013-2014', 'First'),
(113, 'Filipino 3', 'Masining na Pagpapahalaga', 3, '', 28, '2013-2014', 'First'),
(114, 'English ', 'Interactive English', 3, '', 28, '2013-2014', 'First'),
(115, 'Educ. 104', 'Principles of Teaching', 3, '', 28, '2013-2014', 'First'),
(116, 'Computer 1', 'Basic computer', 3, '', 28, '2013-2014', 'First'),
(117, 'Theology 6', 'Social Teaching of the Church', 3, '', 28, '2013-2014', 'Second'),
(118, 'English 5', 'Business English and Correspondence', 3, '', 28, '2013-2014', 'Second'),
(119, 'English 17a', 'Afro-Asian Literature', 3, '', 28, '2013-2014', 'Second'),
(120, 'English 54', 'Structure of the Filipino Language', 3, '', 28, '2013-2014', 'Second'),
(121, 'English 37', 'Creative Writing', 3, '', 28, '2013-2014', 'Second'),
(122, 'Nat. Sci. 4', 'Ecology', 3, '', 28, '2013-2014', 'Second'),
(123, 'Humanities 2', 'Art Education', 3, '', 28, '2013-2014', 'Second'),
(124, 'Computer 2', 'Software Application', 3, '', 28, '2013-2014', 'Second'),
(125, 'English 55', 'Language and culture', 3, '', 29, '2013-2014', 'First'),
(126, 'English 14a', 'Anglo- American Literature', 3, '', 29, '2013-2014', 'First'),
(127, 'English 56', 'European Literature', 3, '', 29, '2013-2014', 'First'),
(128, 'Educ. 102 ', 'Facilitating Learning', 3, '', 29, '2013-2014', 'First'),
(129, 'Pol. Sci. 4', 'Politics & Governance with PC', 3, '', 29, '2013-2014', 'First'),
(130, 'English 57', 'Register in English', 3, '', 29, '2013-2014', 'Second'),
(131, 'English 9a', 'Argumentation', 3, '', 29, '2013-2014', 'Second'),
(132, 'English 58', 'Approaches in college English Teaching', 3, '', 29, '2013-2014', 'Second'),
(133, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, '', 29, '2013-2014', 'Second'),
(134, 'English 17', 'World Literature', 3, '', 29, '2013-2014', 'Second'),
(135, 'Phylosophy 11', 'Social Phylosophy II: Values Identification & Inculcation (lncl. Institution & Ideologies)', 3, '', 29, '2013-2014', 'Second'),
(136, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, '', 30, '2013-2014', 'First'),
(137, 'English 0', 'English Plus', 3, '', 30, '2013-2014', 'First'),
(138, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, '', 30, '2013-2014', 'First'),
(139, 'Math 01', 'Fundamentals of Mathematics', 3, '', 30, '2013-2014', 'First'),
(140, 'Nat. Sci. 2b', 'Biological Science', 3, '', 30, '2013-2014', 'First'),
(141, 'Psycho. 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 3, '', 30, '2013-2014', 'First'),
(142, 'ICT ', 'Basic computer', 3, '', 30, '2013-2014', 'First'),
(143, 'Educ. ', 'Developmental Reading', 3, '', 30, '2013-2014', 'First'),
(144, 'PE 1', 'Physical Fitness', 2, '', 30, '2013-2014', 'First'),
(145, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '', 30, '2013-2014', 'First'),
(146, 'Theology 2', 'Bible & Salvation History', 3, '', 30, '2013-2014', 'Second'),
(147, 'English 2', 'Study and Thinking Skills', 3, '', 30, '2013-2014', 'Second'),
(148, 'Filipino 02', 'Pagbasa at Pagsulat tungo sa Pananaliksik', 3, '', 30, '2013-2014', 'Second'),
(149, 'Math 02', 'Contemporary Mathematics', 3, '', 30, '2013-2014', 'Second'),
(150, 'Humanities 1', 'Art Education', 3, '', 30, '2013-2014', 'Second'),
(151, 'Educ. 101', 'Child & Adolescent Development', 3, '', 30, '2013-2014', 'Second'),
(152, 'Major', 'Structure of the English Laguage', 3, '', 30, '2013-2014', 'Second'),
(153, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, '', 30, '2013-2014', 'Second'),
(154, 'PE 2', 'Rhythmic Activities', 2, '', 30, '2013-2014', 'Second'),
(155, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '', 30, '2013-2014', 'Second'),
(156, 'Theology 3', 'Liturgy and Sacraments in General', 3, '', 31, '2013-2014', 'First'),
(157, 'English 2', 'Writing in the Decipline', 3, '', 31, '2013-2014', 'First'),
(158, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '', 31, '2013-2014', 'First'),
(159, 'Educ. 102', 'Facilitating Learning', 3, '', 31, '2013-2014', 'First'),
(160, 'Educ. 103', 'Educational Technology 1', 3, '', 31, '2013-2014', 'First'),
(161, 'Educ. 104', 'Principles of Teaching 1', 3, '', 31, '2013-2014', 'First'),
(162, 'FS', 'Field Study 1 (Learning Dev\'t Environment)', 1, '', 31, '2013-2014', 'First'),
(163, 'Major', 'Social Dimension of  Education', 3, '', 31, '2013-2014', 'First'),
(164, 'Major', 'Teaching of Listening & Reading', 3, '', 31, '2013-2014', 'First'),
(165, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '', 31, '2013-2014', 'First'),
(166, 'Theology 4', 'Commandments and Christian Morality', 3, '', 31, '2013-2014', 'Second'),
(167, 'English Literature', 'Philippine Literature', 3, '', 31, '2013-2014', 'Second'),
(168, 'Educ. 105', 'Educational Technology 2', 3, '', 31, '2013-2014', 'Second'),
(169, 'Educ. 106', 'Principles of Teaching 2', 3, '', 31, '2013-2014', 'Second'),
(170, 'FS 2', 'Field Study 2 (Experience the Technology Learning Process )', 1, '', 31, '2013-2014', 'Second'),
(171, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '', 31, '2013-2014', 'Second'),
(172, 'Major', 'Teaching of Speaking', 3, '', 31, '2013-2014', 'Second'),
(173, 'Major', 'ESP', 3, '', 31, '2013-2014', 'Second'),
(174, 'Major', 'Intro to Linguistics', 3, '', 31, '2013-2014', 'Second'),
(175, 'Major', 'Mythology and Folklore', 3, '', 31, '2013-2014', 'Second'),
(176, 'PE 4', 'Team Sports and Games', 2, '', 31, '2013-2014', 'Second'),
(177, 'English 3', 'Speech and Oral Communication', 3, '', 31, '2013-2014', 'Second'),
(178, 'English Literature', 'World Literature', 3, '', 31, '2013-2014', 'Second'),
(179, 'Pol. Sci. 4', 'Politics & Governance with PC', 3, '', 31, '2013-2014', 'Second'),
(180, 'Theology 6', 'Church History and Church Today', 3, '', 32, '2013-2014', 'First'),
(181, 'Educ. 108', 'Curriculum Development', 3, '', 32, '2013-2014', 'First'),
(182, 'History 1', 'Philipine History: Roots and Development', 3, '', 32, '2013-2014', 'First'),
(183, 'Educ. 109', 'Assessment of students Learning 1', 3, '', 32, '2013-2014', 'First'),
(184, 'FS 4', 'Field Study 4(Understanding Curriculum Development)', 1, '', 32, '2013-2014', 'First'),
(185, 'ST 1', 'Integrated Teaching Strategies', 1, '', 32, '2013-2014', 'First'),
(186, 'Major', 'Teaching Literature', 3, '', 32, '2013-2014', 'First'),
(187, 'Major', 'Speech and Stage Art', 3, '', 32, '2013-2014', 'First'),
(188, 'Major', 'Mass Communication and Campus Journalism', 3, '', 32, '2013-2014', 'First'),
(189, 'Major', 'Prep. & Eval. of Instruc. Materials', 3, '', 32, '2013-2014', 'First'),
(190, 'Theology 6', 'Social Teaching of the Church', 3, '', 32, '2013-2014', 'Second'),
(191, 'Economics 1b', 'Principles of Economics with TAR', 3, '', 32, '2013-2014', 'Second'),
(192, 'Educ. 109', 'Assessment of students Learning 2', 3, '', 32, '2013-2014', 'Second'),
(193, 'FS 5', 'Field Study 5(Learning Assessment Strategies)', 1, '', 32, '2013-2014', 'Second'),
(194, 'ST 2', 'Use of Popular Media in teaching', 1, '', 32, '2013-2014', 'Second'),
(195, 'Major', 'Creative Writing', 3, '', 32, '2013-2014', 'Second'),
(196, 'Major', 'Remedial Instruction in English', 3, '', 32, '2013-2014', 'Second'),
(197, 'Major', 'Language Curriculum for Sec. Schools', 3, '', 32, '2013-2014', 'Second'),
(198, 'Major', 'Afro-Asian Literature', 3, '', 32, '2013-2014', 'Second'),
(199, 'Major', 'English & American Literature', 3, '', 32, '2013-2014', 'Second'),
(200, 'Nat. Sci. 2', 'Physical Science', 3, '', 32, '2013-2014', 'Second'),
(201, 'Philo.  3', 'Logic', 3, '', 32, '2013-2014', 'Second'),
(202, 'Soc. Sci. 19', 'Social & Culture with AP', 3, '', 32, '2013-2014', 'Second'),
(203, 'Educ.', 'The Teaching Profession', 3, '', 33, '2013-2014', 'First'),
(204, 'FS 6', 'Field Study 6', 1, '', 33, '2013-2014', 'First'),
(205, 'ST 3', 'Research', 3, '', 33, '2013-2014', 'First'),
(206, 'Major', 'Language and Literature Assessment', 3, '', 33, '2013-2014', 'First'),
(207, 'Major', 'Intro to Stylistic', 3, '', 33, '2013-2014', 'First'),
(208, 'Major', 'Literary Criticism', 3, '', 33, '2013-2014', 'First'),
(209, 'Major', 'Language Research', 3, '', 33, '2013-2014', 'First'),
(210, 'Major', 'Translation & Editing of Text', 3, '', 33, '2013-2014', 'First'),
(211, 'Students Teaching', 'Practice Teaching', 6, '', 33, '2013-2014', 'Second'),
(212, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '', 34, '2013-2014', 'First'),
(213, 'English 0', 'English Plus', 3, '', 34, '2013-2014', 'First'),
(214, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '', 34, '2013-2014', 'First'),
(215, 'Math 01', 'Fundamentals of Mathematics', 3, '', 34, '2013-2014', 'First'),
(216, 'Nat. Sci. 2b', 'Biological Science', 3, '', 34, '2013-2014', 'First'),
(217, 'Psychology 1a', 'General Psy. with Moral Regen & Drug Abuse Ed.', 3, '', 34, '2013-2014', 'First'),
(218, 'ICT', 'Basic Computer', 3, '', 34, '2013-2014', 'First'),
(219, 'Educ. ', 'Developmental Reading', 3, '', 34, '2013-2014', 'First'),
(220, 'PE 1', 'Physical Fitness', 2, '', 34, '2013-2014', 'First'),
(221, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '', 34, '2013-2014', 'First'),
(222, 'Theology 2', 'Bible and Salvation History', 3, '', 34, '2013-2014', 'Second'),
(223, 'English 2', 'Study and Thinking Skills ', 3, '', 34, '2013-2014', 'Second'),
(224, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '', 34, '2013-2014', 'Second'),
(225, 'Math 02', 'Contemporary Mathematics', 3, '', 34, '2013-2014', 'Second'),
(226, 'Humanities 1', 'Art Education', 3, '', 34, '2013-2014', 'Second'),
(227, 'Educ. 101', 'Child and Adolescent Development', 3, '', 34, '2013-2014', 'Second'),
(228, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '', 34, '2013-2014', 'Second'),
(229, 'Major', 'Advance Algebra', 3, '', 34, '2013-2014', 'Second'),
(230, 'PE 2', 'Rhythmic Activities', 2, '', 34, '2013-2014', 'Second'),
(231, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '', 34, '2013-2014', 'Second'),
(232, 'Theology 3', 'Liturgy and Sacraments in General', 3, '', 35, '2013-2014', 'First'),
(233, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '', 35, '2013-2014', 'First'),
(234, 'English 2', 'Writing & Discipline', 3, '', 35, '2013-2014', 'First'),
(235, 'Educ. 102', 'Facilitating and Learning', 3, '', 35, '2013-2014', 'First'),
(236, 'Educ. 103', 'Educational Technology', 3, '', 35, '2013-2014', 'First'),
(237, 'Educ. 104', 'Principles of Teaching 1', 3, '', 35, '2013-2014', 'First'),
(238, 'FS 1', 'Field Study 1 (Learning Dev\'t Environment)', 1, '', 35, '2013-2014', 'First'),
(239, 'Educ. ', 'Social Dimension of Education', 3, '', 35, '2013-2014', 'First'),
(240, 'Major', 'Plane Geometry', 3, '', 35, '2013-2014', 'First'),
(241, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '', 35, '2013-2014', 'First'),
(242, 'Theology 4', 'Commandments and Christian Morality', 3, '', 35, '2013-2014', 'Second'),
(243, 'English Literature', 'Philippine Literature', 3, '', 35, '2013-2014', 'Second'),
(244, 'Educ. 105', 'Educational Technology 2', 3, '', 35, '2013-2014', 'Second'),
(245, 'Educ. 106', 'Principles of Teaching 2', 3, '', 35, '2013-2014', 'Second'),
(246, 'FS 2', 'Field Study 2 (Experiencing the Tech. Learning Process)', 1, '', 35, '2013-2014', 'Second'),
(247, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '', 35, '2013-2014', 'Second'),
(248, 'Major', 'Trigonometry', 3, '', 35, '2013-2014', 'Second'),
(249, 'Major', 'Solid Geometry', 3, '', 35, '2013-2014', 'Second'),
(250, 'Major', 'Analytic Geometry', 3, '', 35, '2013-2014', 'Second'),
(251, 'Major', 'Abstract Algebra', 3, '', 35, '2013-2014', 'Second'),
(252, 'PE 4', 'Team Sports and Games', 3, '', 35, '2013-2014', 'Second'),
(253, 'English 3', 'Speech and Oral Communication', 3, '', 35, '2013-2014', 'Second'),
(254, 'English Literature', 'World Literature', 3, '', 35, '2013-2014', 'Second'),
(255, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, '', 35, '2013-2014', 'Second'),
(256, 'Theology 5', 'Church History and Church Today', 3, '', 36, '2013-2014', 'First'),
(257, 'Educ. 108', 'Curriculum Development', 3, '', 36, '2013-2014', 'First'),
(258, 'Educ. 109', 'Assessment of Student Learning 1', 3, '', 36, '2013-2014', 'First'),
(259, 'FS 4', 'Field Study 4 (Understanding Curriculum Development)', 1, '', 36, '2013-2014', 'First'),
(260, 'ST 1', 'Integrated Teaching Strategies', 1, '', 36, '2013-2014', 'First'),
(261, 'History 1', 'Philippine History', 3, '', 35, '2013-2014', 'First'),
(262, 'Major', 'Calculus', 3, '', 36, '2013-2014', 'First'),
(263, 'Major', 'Elementary Statistics', 3, '', 36, '2013-2014', 'First'),
(264, 'Major', 'Probability', 3, '', 36, '2013-2014', 'First'),
(265, 'Major', 'Linear Algebra', 3, '', 36, '2013-2014', 'First'),
(266, 'Theology 6', 'Social Teaching of the Church', 3, '', 36, '2013-2014', 'Second'),
(267, 'Economics 1b', 'Principles of Economics with TAR', 3, '', 36, '2013-2014', 'Second'),
(268, 'Educ. 110', 'Assessment of Student Learning 2', 3, '', 36, '2013-2014', 'Second'),
(269, 'Major', 'Calculus 2', 3, '', 36, '2013-2014', 'Second'),
(270, 'Major', 'Advance Statistics', 3, '', 36, '2013-2014', 'Second'),
(271, 'Major', 'Modern Geometry', 3, '', 36, '2013-2014', 'Second'),
(272, 'Major', 'Number Theory', 3, '', 36, '2013-2014', 'Second'),
(273, 'Major', 'Math Investigation and Modeling', 3, '', 36, '2013-2014', 'Second'),
(274, 'Nat. Sci. 3', 'Physical Science', 3, '', 36, '2013-2014', 'Second'),
(275, 'Philo. 3', 'Logic', 3, '', 36, '2013-2014', 'Second'),
(276, 'S. Sc. 19', 'Society and Culture with FP', 3, '', 36, '2013-2014', 'Second'),
(277, 'Ed. ', 'The Teaching Profession', 3, '', 37, '2013-2014', 'First'),
(278, 'FS 6', 'Field Study', 1, '', 37, '2013-2014', 'First'),
(279, 'ST 3', 'Research', 1, '', 37, '2013-2014', 'First'),
(280, 'FS 5', 'Field Study 5 (Learning Assest Strategies)', 1, '', 36, '2013-2014', 'Second'),
(281, 'ST 2', 'Use of Popular Media in Teaching', 1, '', 37, '2013-2014', 'Second'),
(282, 'Major', 'Action Research in Math', 3, '', 37, '2013-2014', 'First'),
(283, 'Major', 'Seminar on Problem Solving', 3, '', 37, '2013-2014', 'First'),
(284, 'Major', 'Seminar on Technology in Math', 3, '', 37, '2013-2014', 'First'),
(285, 'Major', 'Instrumentation in Math', 3, '', 37, '2013-2014', 'First'),
(286, 'Major', 'History of Math', 3, '', 37, '2013-2014', 'First'),
(287, 'Student Teaching', 'Practice Teaching', 6, '', 37, '2013-2014', 'Second'),
(288, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '', 38, '2013-2014', 'First'),
(289, 'English 1', 'English Plus', 3, '', 38, '2013-2014', 'First'),
(290, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '', 38, '2013-2014', 'First'),
(291, 'Math 01', 'Fundamentals of Mathematics', 3, '', 38, '2013-2014', 'First'),
(292, 'Nat. Sci. 2b', 'Biological Science', 3, '', 38, '2013-2014', 'First'),
(293, 'Psychology 1a', 'General Psy. with Moral Regen & Drug Abuse Ed.', 3, '', 38, '2013-2014', 'First'),
(294, 'ICT', 'Basic Computer', 3, '', 38, '2013-2014', 'First'),
(295, 'Educ. ', 'Developmental Reading', 3, '', 38, '2013-2014', 'First'),
(296, 'PE 1', 'Physical Fitness', 2, '', 38, '2013-2014', 'First'),
(297, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '', 38, '2013-2014', 'First'),
(298, 'Theology 2', 'Bible and Salvation History', 3, '', 38, '2013-2014', 'Second'),
(299, 'English 1', 'Study and Thinking Skills ', 3, '', 38, '2013-2014', 'Second'),
(300, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '', 38, '2013-2014', 'Second'),
(301, 'Math 02', 'Contemporary Mathematics', 3, '', 38, '2013-2014', 'Second'),
(302, 'Humanities 1', 'Art Education', 3, '', 38, '2013-2014', 'Second'),
(303, 'Educ. 101', 'Child and Adolescent Development', 3, '', 38, '2013-2014', 'Second'),
(304, 'Major', 'Kulrurang Popular', 3, '', 38, '2013-2014', 'Second'),
(305, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '', 38, '2013-2014', 'Second'),
(306, 'PE 2', 'Rhythmic Activities', 2, '', 38, '2013-2014', 'Second'),
(307, 'Theology 3', 'Liturgy and Sacraments in General', 3, '', 39, '2013-2014', 'First'),
(308, 'English 2', 'Writing & Discipline', 3, '', 39, '2013-2014', 'First'),
(309, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '', 39, '2013-2014', 'First'),
(310, 'Educ. 102', 'Facilitating and Learning', 3, '', 39, '2013-2014', 'First'),
(311, 'Educ. 103', 'Educational Technology 1', 3, '', 39, '2013-2014', 'First'),
(312, 'Educ. 104', 'Principles of Teaching 1', 3, '', 39, '2013-2014', 'First'),
(313, 'FS 1', 'Field Study 1 (Learning Dev\'t Environment)', 1, '', 39, '2013-2014', 'First'),
(314, 'Educ. ', 'Social Dimension of Education', 3, '', 39, '2013-2014', 'First'),
(315, 'Major', 'Panitikang Rehiyon', 3, '', 39, '2013-2014', 'First'),
(316, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '', 39, '2013-2014', 'First'),
(317, 'Theology 4', 'Commandments and Christian Morality', 3, '', 39, '2013-2014', 'Second'),
(318, 'English Literature', 'Philippine Literature', 3, '', 39, '2013-2014', 'Second'),
(319, 'Educ. 105', 'Educational Technology 2', 3, '', 39, '2013-2014', 'Second'),
(320, 'Educ. 106', 'Principles of Teaching 2', 3, '', 39, '2013-2014', 'Second'),
(321, 'FS 2', 'Field Study 2 (Experiencing the Tech. Learning Process)', 1, '', 39, '2013-2014', 'Second'),
(322, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '', 39, '2013-2014', 'Second'),
(323, 'Major', 'Instratura ng Wikang Filipino', 3, '', 39, '2013-2014', 'Second'),
(324, 'Major', 'Maikling Kuwentong Filipino', 3, '', 39, '2013-2014', 'Second'),
(325, 'Major', 'Pagtuturo at Pagtataya sa Pakikinig at Pagsasalita', 3, '', 39, '2013-2014', 'Second'),
(326, 'Major', 'lnrod sa Pag-aaral ng Wika', 3, '', 39, '2013-2014', 'Second'),
(327, 'PE 4', 'Team Sports and Games', 2, '', 39, '2013-2014', 'Second'),
(328, 'English 3', 'Speech and Oral Communication', 3, '', 39, '2013-2014', 'Second'),
(329, 'English Literature', 'World Literature', 3, '', 39, '2013-2014', 'Second'),
(330, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, '', 39, '2013-2014', 'Second'),
(331, 'Theology 5', 'Church History and Church Today', 3, '', 40, '2013-2014', 'First'),
(332, 'History 1', 'Philippine History', 3, '', 40, '2013-2014', 'First'),
(333, 'Educ. 108', 'Curriculum Development', 3, '', 40, '2013-2014', 'First'),
(334, 'Educ. 109', 'Assessment of Student Learning 1', 3, '', 40, '2013-2014', 'First'),
(335, 'FS 4', 'Field Study 4 (Understanding Curriculum Development)', 1, '', 40, '2013-2014', 'First'),
(336, 'ST 1', 'Integrated Teaching Strategies', 1, '', 40, '2013-2014', 'First'),
(337, 'Major', 'Sanaysay at Talumpati', 3, '', 40, '2013-2014', 'First'),
(338, 'Major', 'Pagtuturo at Paglalaya sa Pagbasa at Pagsulat', 3, '', 40, '2013-2014', 'First'),
(339, 'Major', 'Panimulang Linguistika', 3, '', 40, '2013-2014', 'First'),
(340, 'Major', 'Intro. sa Pagsasalin', 3, '', 40, '2013-2014', 'First'),
(341, 'Theology 6', 'Social Teaching of the Church', 3, '', 40, '2013-2014', 'Second'),
(342, 'Economics 1b', 'Principles of Economics with TAR', 3, '', 40, '2013-2014', 'Second'),
(343, 'Educ. 110', 'Assessment of Student Learning 2', 3, '', 40, '2013-2014', 'Second'),
(344, 'FS 5', 'Field Study 5 (Learning Assest Strategies)', 1, '', 40, '2013-2014', 'Second'),
(345, 'ST 2', 'Use of Popular Media in Teaching', 1, '', 40, '2013-2014', 'Second'),
(346, 'Major', 'Panunuring Pampanitikan', 3, '', 40, '2013-2014', 'Second'),
(347, 'Major', 'Ang Fil. sa Kul. ng Bantayng Antas ng Edukasyon', 3, '', 40, '2013-2014', 'Second'),
(348, 'Major', 'Paghahanda at Ebalwasyon ng kagamitang Pantuturo', 3, '', 40, '2013-2014', 'Second'),
(349, 'Major', 'Pagbasa at Obramaestra sa Filipino', 3, '', 40, '2013-2014', 'Second'),
(350, 'Major', 'Intro sa Pananaliksik: Wika at Panitikan', 3, '', 40, '2013-2014', 'Second'),
(351, 'Nat. Sci. 3', 'Physical Science', 3, '', 40, '2013-2014', 'Summer'),
(352, 'Philo. 3', 'Logic', 3, '', 40, '2013-2014', 'Summer'),
(353, 'S. Sc. 19', 'Society and Culture with FP', 3, '', 40, '2013-2014', 'Summer'),
(354, 'Educ. ', 'The Teaching Profession', 3, '', 41, '2013-2014', 'First'),
(355, 'FS 6', 'Field Study', 1, '', 41, '2013-2014', 'First'),
(356, 'ST 3', 'Research', 1, '', 41, '2013-2014', 'First'),
(357, 'Major', 'Pagpahalaga ng Pampanitikan', 3, '', 41, '2013-2014', 'First'),
(358, 'Major', 'Intro sa Pamamahayag', 3, '', 41, '2013-2014', 'First'),
(359, 'Major', 'Panitikan ng Umuunlad na Bansa', 3, '', 41, '2013-2014', 'First'),
(360, 'Major', 'Pagtuturo at Pagtataya sa Panitikan', 3, '', 41, '2013-2014', 'First'),
(361, 'Major', 'Panulaang Filipino', 3, '', 41, '2013-2014', 'First'),
(362, 'Student Teaching', 'Practice Teaching', 6, '', 41, '2013-2014', 'Second'),
(363, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '', 42, '2013-2014', 'First'),
(364, 'English 0', 'English Plus', 3, '', 42, '2013-2014', 'First'),
(365, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '', 42, '2013-2014', 'First'),
(366, 'Math 01', 'Fundamentals of Mathematics', 3, '', 42, '2013-2014', 'First'),
(367, 'Nat. Sci. 2b', 'Biological Science', 3, '', 42, '2013-2014', 'First'),
(368, 'ICT', 'Basic Computer', 3, '', 42, '2013-2014', 'First'),
(369, 'Educ. ', 'Developmental Reading', 3, '', 42, '2013-2014', 'First'),
(370, 'Geography', 'Basic Geography', 3, '', 42, '2013-2014', 'First'),
(371, 'PE 1', 'Physical Fitness', 3, '', 42, '2013-2014', 'First'),
(372, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '', 42, '2013-2014', 'First'),
(373, 'Theology 2', 'Bible and Salvation History', 3, '', 42, '2013-2014', 'Second'),
(374, 'English 1', 'Study and Thinking Skills', 3, '', 42, '2013-2014', 'Second'),
(375, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '', 42, '2013-2014', 'Second'),
(376, 'Math 02', 'Contemporary Mathematics', 3, '', 42, '2013-2014', 'Second'),
(377, 'Educ. 101', 'Child & Adolescents Development', 3, '', 42, '2013-2014', 'Second'),
(378, 'Math ', 'Advance Algebra & Trigonometry', 3, '', 42, '2013-2014', 'Second'),
(379, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '', 42, '2013-2014', 'Second'),
(380, 'PE 2', 'Rhythmic Activities', 2, '', 42, '2013-2014', 'Second'),
(381, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '', 42, '2013-2014', 'Second'),
(382, 'Theology 3', 'Liturgy and Sacraments in General', 3, '', 43, '2013-2014', 'First'),
(383, 'English 2', 'Writing in the Discipline', 3, '', 43, '2013-2014', 'First'),
(384, 'Filipino 03', 'Masining na Pamamahayag', 3, '', 43, '2013-2014', 'First'),
(385, 'Educ. 102', ' Facilitating and Learning', 3, '', 43, '2013-2014', 'First'),
(386, 'Educ. 103', 'Educational Technology 1', 3, '', 43, '2013-2014', 'First'),
(387, 'Educ. 104', 'Principles in Teaching 1', 3, '', 43, '2013-2014', 'First'),
(388, 'FS 1', 'Field Study 1', 1, '', 43, '2013-2014', 'First'),
(389, 'Educ.', 'Social Dimension of Education', 3, '', 43, '2013-2014', 'First'),
(390, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '', 43, '2013-2014', 'First'),
(391, 'Theology 3', 'Commandments and Christian Morality', 3, '', 43, '2013-2014', 'Second'),
(392, 'English Literature ', 'Philippine Literature', 3, '', 43, '2013-2014', 'Second'),
(393, 'English ', 'Thinking Skills 2', 3, '', 43, '2013-2014', 'Second'),
(394, 'Math ', 'Plane and Solid Geometry', 3, '', 43, '2013-2014', 'Second'),
(395, 'Soc. Sci. ', 'Geography 3', 3, '', 43, '2013-2014', 'Second'),
(396, 'Educ. 105 ', 'Educational Technology 2', 3, '', 43, '2013-2014', 'Second'),
(397, 'Educ. 106', 'Principles in Teaching 2', 3, '', 43, '2013-2014', 'Second'),
(398, 'FS 2', 'Field Study 2', 1, '', 43, '2013-2014', 'Second'),
(399, 'FS 3', 'Field Study 3', 1, '', 43, '2013-2014', 'Second'),
(400, 'History 1', 'Philippine History', 3, '', 43, '2013-2014', 'Second'),
(401, 'PE 4', 'Team Sports and Games', 2, '', 43, '2013-2014', 'Second'),
(402, 'English 3', 'Speech and Oral Communication', 3, '', 31, '2013-2014', 'Summer'),
(403, 'English Literature ', 'World Literature', 3, '', 43, '2013-2014', 'Second'),
(404, 'Pol. Sci.', 'Politics & Governance PC', 3, '', 43, '2013-2014', 'Summer'),
(405, 'Theology 5', 'Church History and Church Today', 3, '', 44, '2013-2014', 'First'),
(406, 'English ', 'Interactive English', 3, '', 44, '2013-2014', 'First'),
(407, 'English ', 'Children\'s Literature', 3, '', 44, '2013-2014', 'First'),
(408, 'Filipino ', 'Pagpahalaga ng Pampanitikan', 3, '', 44, '2013-2014', 'First'),
(409, 'Math ', 'Analytic Geometry and Intro. Calculus', 3, '', 44, '2013-2014', 'First'),
(410, 'Science', 'Inorganic Chemistry', 3, '', 44, '2013-2014', 'First'),
(411, 'Educ. 108', 'Curriculum Development', 3, '', 44, '2013-2014', 'First'),
(412, 'Educ. 109', 'Assessment of student Learning 1', 3, '', 44, '2013-2014', 'First'),
(413, 'FS 4', 'Field Study 4', 1, '', 44, '2013-2014', 'First'),
(414, 'ST 1', 'Integrated Teaching Strategies', 1, '', 44, '2013-2014', 'First'),
(415, 'Theology 6', 'Social Teaching of the Church', 3, '', 44, '2013-2014', 'Second'),
(416, 'English ', 'Mythology and Folklore', 3, '', 44, '2013-2014', 'Second'),
(417, 'Filipino ', 'Panitikan ng Filipino', 3, '', 44, '2013-2014', 'Second'),
(418, 'Humanities', 'Art Education', 3, '', 44, '2013-2014', 'Second'),
(419, 'Science', 'Ecology', 3, '', 44, '2013-2014', 'Second'),
(420, 'Economics 1b', 'Principles of Economics with TAR', 3, '', 44, '2013-2014', 'Second'),
(421, 'cse 101', 'ghjjkk', 3, 'cse100', 47, '2013-2014', 'First'),
(422, 'cse121', 'HAGHH', 3, 'cse100', 47, '2013-2014', 'First'),
(423, 'EEE101', 'YHGDXBN', 3, 'EEE100', 47, '2016-2017', 'First'),
(424, 'cse 311', 'wertuilo', 5, 'cse 300', 47, '2013-2014', 'First'),
(425, 'EEE211', 'dgfgfh', 3, 'EEE101', 47, '2013-2014', 'First'),
(426, 'CSE 400', 'sd4', 1, 'CSE300', 47, '2013-2014', 'First'),
(427, 'CSE223', 'Com Degn', 3, 'cse205', 47, '2013-2014', 'First'),
(428, 'CSE 451', 'efghj', 3, 'cse 200', 47, '2013-2014', 'First'),
(429, 'cse 411', 'frtytujy', 3, 'cse 251', 47, '2013-2014', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE `tblrequirements` (
  `REQ_ID` int(30) NOT NULL,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `BAPTISMAL` varchar(5) NOT NULL DEFAULT 'no',
  `ENTRANCE_TEST_RESULT` varchar(5) NOT NULL DEFAULT 'no',
  `MARRIAGE_CONTRACT` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `BAPTISMAL`, `ENTRANCE_TEST_RESULT`, `MARRIAGE_CONTRACT`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(48, 'Yes', 'No', 'No', 'No', 'No', 20001550),
(56, 'No', 'No', 'No', 'No', 'No', 132);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `FATHER` varchar(255) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `BOARDING` varchar(5) NOT NULL DEFAULT 'no',
  `WITH_FAMILY` varchar(5) NOT NULL DEFAULT 'yes',
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `OTHER_PERSON_SUPPORT` varchar(255) NOT NULL,
  `ADDRESS` text NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER`, `FATHER_OCCU`, `MOTHER`, `MOTHER_OCCU`, `BOARDING`, `WITH_FAMILY`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `OTHER_PERSON_SUPPORT`, `ADDRESS`, `IDNO`) VALUES
(48, 'BENIGNO B. CORTEZ', 'FARMER', 'TERESITA P. CORTEZ', 'HOUSE WIFE', 'Yes', 'No', 'BENIGNO B. CORTEZ', 'TABUGON,kABANKALAN CITY', 'NONE', 'NONE', 20001550),
(56, '', '', '', '', '', '', '', '', '', '', 132);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(11, 'yeakub', 'abc@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(12, 'payel', 'payel@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(13, 'admin', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ay`
--
ALTER TABLE `ay`
  ADD PRIMARY KEY (`AY_ID`),
  ADD UNIQUE KEY `acadyr` (`ACADYR`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INST_ID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`YR_ID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHOTO_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEM_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  ADD PRIMARY KEY (`REQ_ID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ay`
--
ALTER TABLE `ay`
  MODIFY `AY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `INST_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `YR_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `MAJOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `SEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  MODIFY `REQ_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
