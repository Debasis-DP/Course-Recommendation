-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 09:12 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courserec`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ccourses`
--

CREATE TABLE `ccourses` (
  `CourseCode` varchar(20) NOT NULL,
  `CourseTitle` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccourses`
--

INSERT INTO `ccourses` (`CourseCode`, `CourseTitle`) VALUES
('15MX11', 'Probability and Statistics'),
('15MX12', 'Mathematical Foundations of Computer Science'),
('15MX13', 'Principles of Programming Languages'),
('15MX14', 'Data Structures and Algorithm'),
('15MX15', 'Computer Architecture'),
('15MX21', 'Optimization Techiniques'),
('15MX22', 'Object Oriented Programming'),
('15MX23', 'Advanced Data Structures and Algorithm'),
('15MX24', 'Database Management System'),
('15MX25', 'Microprocessors and Embedded Systems'),
('15MX31', 'Java and .Net Programming'),
('15MX32', 'Operating Systems'),
('15MX33', 'Computer Networks'),
('15MX34', 'Principles of Compiler Design'),
('15MX41', 'Unix Architecture and Programming'),
('15MX42', 'Enterprise Computing'),
('15MX43', 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `CourseCode` varchar(20) NOT NULL,
  `CourseTitle` varchar(50) NOT NULL,
  `Credit` int(11) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Program` varchar(60) NOT NULL DEFAULT 'Master of Computer Applications',
  `Grading` int(11) NOT NULL,
  `CourseLoad` int(11) NOT NULL,
  `Attendance` int(11) NOT NULL,
  `Practicality` int(11) NOT NULL,
  `Interactivity` int(11) NOT NULL,
  `Rating` decimal(10,3) NOT NULL,
  `TotalVotes` int(11) NOT NULL,
  `Description` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`CourseCode`, `CourseTitle`, `Credit`, `Category`, `Program`, `Grading`, `CourseLoad`, `Attendance`, `Practicality`, `Interactivity`, `Rating`, `TotalVotes`, `Description`) VALUES
('E01', 'Fundamentals of Tissue Engineering', 3, 'OE', 'B.Tech', 7, 0, 8, 7, 5, '3.981', 56, 'This course provides the basics of Tissue Engineering that covers the combination of cells, engineering and materials methods, and suitable biochemical and physicochemical factors to improve or replace biological tissues.'),
('E02', 'Materials in Medical Science', 3, 'OE', 'B.Tech', 8, 0, 3, 8, 6, '3.562', 90, 'Coverage spans a wide range of topics from basic science to clinical applications, around the theme of materials in medicine and dentistry. '),
('E03', ' Sports Biomechanics', 3, 'OE', 'B.Tech', 9, 0, 3, 5, 7, '3.925', 15, 'Sports biomechanics is a quantitative based study and analysis of professional athletes and sports activities in general, can simply be described as the physics of sports.'),
('E04', 'Separation Technology', 3, 'OE', 'B.Tech', 10, 3, 5, 4, 2, '4.096', 72, 'Separation and Purification Technology is a course dedicated to the dissemination of novel methods for separation and purification in chemical and environmental engineering for homogeneous solutions and heterogeneous mixtures.'),
('E05', 'Introduction to Ceramics', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 2, '3.938', 67, ' This course helps you in understanding and controlling and developing new ceramic processes and products.'),
('E06', 'Ceramics in Electronic Applications', 3, 'OE', 'B.Tech', 10, 0, 0, 2, 2, '4.413', 45, ' Ceramic has wide range of electrical properties including insulating, semi-conducting, superconducting, piezoelectric and magnetic are critical to products such as cell phones, computers, television, and other consumer electronic products.'),
('E07', 'Operating Systems', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '3.754', 46, 'All the details to learn and manage the computer hardware resources and provide common services for computer programs.'),
('E08', 'Chemical Kinetics', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '3.530', 71, 'Chemical kinetics, also known as reaction kinetics, is the study of rates of chemical processes. Chemical kinetics includes investigations of how different experimental conditions can influence the speed of a chemical reaction and yield information about the reaction\'s mechanism and transition states, as well as the construction of mathematical models that can describe the characteristics of a chemical reaction.'),
('E09', 'Introduction to Material Chemistry', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 7, '4.388', 32, 'Introduction to Materials Chemistry will appeal to advanced undergraduates and graduate students in chemistry, materials science,and chemical engineering by leading them stepwise from the elementary chemistry on which materials science depends, through a discussion of the different classes of materials, and ending with a description of how materials are used in devices and general technology.'),
('E10', 'Optical Spectroscopy: Methods and Applications', 3, 'OE', 'B.Tech', 7, 10, 0, 0, 4, '4.849', 71, 'Optical Spectroscopy bridges a gap by providing a background on optics while focusing on spectroscopic methodologies, tools and instrumentations.'),
('E11', 'Fundamentals of Communication Systems', 3, 'OE', 'B.Tech', 10, 2, 0, 0, 1, '4.580', 70, 'With an emphasis on digital communications, Communication Systems Engineering, introduces the basic principles underlying the analysis and design of communication systems. In addition, this text gives a solid introduction to analog communications and a review of important mathematical foundation topics.'),
('E12', 'Soft Computing Techniques', 3, 'OE', 'B.Tech', 4, 0, 8, 2, 9, '4.854', 86, 'In computer science, soft computing (sometimes referred to as computational intelligence, though CI does not have an agreed definition) is the use of inexact solutions to computationally hard tasks such as the solution of NP-complete problems, for which there is no known algorithm that can compute an exact solution in polynomial time.'),
('E13', 'Power Generation Systems', 3, 'OE', 'B.Tech', 4, 0, 7, 5, 10, '4.050', 101, 'Power generation systems are simply the combination of a potential or stored energy converter providing kinetic energy, which, in turn, creates electric power for use in motors, lighting, heating, and other conveniences of modern life.'),
('E14', 'Utilization of Electrical Energy', 3, 'OE', 'B.Tech', 6, 0, 7, 8, 9, '3.805', 13, 'Various non-conventional and conventional methods of generating electric energy have been discussed.Economics of generation, starting with the load survey to the fixation of tariff explained.'),
('E15', 'Systems and Signal Processing', 3, 'OE', 'B.Tech', 8, 0, 0, 0, 2, '3.844', 25, 'Students will find a wide range of topics covered within the subject areas of system design and implementation, algorithms, architectures, and applications.'),
('E16', 'Communicative English', 3, 'OE', 'B.Tech', 4, 0, 0, 2, 9, '4.960', 71, 'The phrase Communicative English refers to that English which helps us to communicate effectively with people using language functions.'),
('E17', 'Post-Liberalization Transformations in India', 3, 'OE', 'B.Tech', 7, 0, 8, 6, 1, '3.770', 17, 'Liberalisation in India refers to the economic liberalisation, initiated in 1991, of the country\\\'s economic policies, with the goal of making the economy more market and service-oriented and expanding the role of private and foreign investment.'),
('E18', 'Managerial Economics ', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 1, '4.967', 86, 'Information Storage and Management (ISM) is a unique course that provides a comprehensive understanding of the various storage infrastructure components in data center environments.Managerial economics is the \"application of the economic concepts and economic analysis to the problems of formulating rational managerial decisions.'),
('E19', 'Science of Consciousness in Ancient India', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '4.026', 79, 'This course helps you understand their scientific significance and separate what can be correlated with the emerging insights of cognitive science from the more speculative philosophical and religious thought.'),
('E20', 'Introduction to Cultural Studies', 3, 'OE', 'B.Tech', 8, 0, 10, 6, 4, '4.708', 34, 'Cultural Studies is an emerging area of research and teaching that brings in new perspectives to the study of culture and society'),
('E21', 'Introduction to the Metaphysics of Sanskrit Langua', 3, 'OE', 'B.Tech', 7, 0, 0, 2, 6, '3.567', 22, 'This c ourse deals with the earliest surviving anthology of poems in any of the Indo-European languages is in Ancient Sanskrit.'),
('E22', 'Language and Writing', 3, 'OE', 'B.Tech', 6, 1, 0, 5, 9, '4.100', 23, 'Lead students toward independence as writers with Language for Writing, which teaches not only the skill of writing but the vocabulary, sentence, and organizational skills that underlie it. '),
('E23', 'Science, Technology and Society', 3, 'OE', 'B.Tech', 8, 0, 0, 2, 8, '3.750', 12, 'Science, technology and society studies, or science and technology studies (both abbreviated STS) is the study of how society, politics, and culture affect scientific research and technological innovation, and how these, in turn, affect society, politics and culture.'),
('E24', 'Educational Psychology', 3, 'OE', 'B.Tech', 8, 9, 0, 2, 0, '4.220', 37, 'The study of learning processes, from both cognitive and behavioral perspectives, allows researchers to understand individual differences in intelligence, cognitive development, '),
('E25', 'Public Economics ', 3, 'OE', 'B.Tech', 10, 0, 0, 5, 0, '4.550', 26, 'Public economics (or economics of the public sector) is the study of government policy through the lens of economic efficiency and equity.'),
('E26', 'International Trade and Development ', 3, 'OE', 'B.Tech', 8, 0, 1, 3, 4, '4.020', 7, 'International trade is the exchange of capital, goods, and services across international borders or territories. International development or global development is a wide concept concerning level of development on an international scale.'),
('E27', 'Microbial Genetics', 3, 'OE', 'B.Tech', 8, 3, 0, 3, 1, '4.320', 5, 'Microbial genetics is a subject area within microbiology and genetic engineering which studies the genetics of very small (micro) organisms; bacteria, archaea, viruses and some protozoa and fungi and the study of the genotype of microbial species and also the expression system in the form of phenotypes.'),
('E28', 'Plant Biotechnology', 3, 'OE', 'B.Tech', 4, 0, 7, 5, 8, '4.420', 31, 'Plant biotechnology can be defined as the introduction of desirable traits into plants through genetic modification.'),
('E29', 'Discrete Mathematics', 3, 'OE', 'B.Tech', 5, 0, 8, 5, 9, '4.320', 21, 'Discrete mathematics is the study of mathematical structures that are fundamentally discrete rather than continuous.'),
('E30', 'Finite Element Analysis', 3, 'OE', 'B.Tech', 8, 2, 2, 3, 1, '4.250', 32, 'Finite Element Analysis\nThe finite element method (FEM), also referred to as finite element analysis (FEA) is a numerical method for solving problems of engineering and mathematical physics.\n'),
('E31', 'Computer Added Design', 3, 'OE', 'B.Tech', 9, 0, 2, 0, 0, '3.890', 11, 'Computer-aided design (CAD) is the use of computer systems (or workstations) to aid in the creation, modification, analysis, or optimization of a design.['),
('E32', 'Industrial Management', 3, 'OE', 'B.Tech', 9, 0, 1, 0, 1, '4.310', 25, 'In economics, industrial organization or industrial economy is a field that builds on the theory of the firm by examining the structure of (and, therefore, the boundaries between) firms and markets'),
('E33', 'Principle and Practice of Heat Treatments', 3, 'OE', 'B.Tech', 9, 0, 0, 5, 1, '4.050', 3, 'This course aims to provide a grounding in the heat treatment regimes applied to common industrial metals and relates their properties to the microstructural changes induced by the treatments.'),
('E34', 'Expermental Techniques in Materials Engineering', 3, 'OE', 'B.Tech', 8, 0, 0, 0, 4, '3.880', 2, 'Experimental Techniques in Materials and Mechanics provides a detailed yet easy-to-follow treatment of various techniques useful for characterizing the structure and mechanical properties of materials.'),
('E35', 'Science of Nano-materials', 3, 'OE', 'B.Tech', 8, 0, 0, 2, 3, '4.180', 10, 'Nanomaterials are cornerstones of nanoscience and nanotechnology. Nanostructure science and technology is a broad and interdisciplinary area of research and development activity that has been growing explosively worldwide in the past few years.'),
('E36', 'Vacuum Science and Applications', 3, 'OE', 'B.Tech', 9, 2, 1, 3, 6, '4.300', 6, 'Recent advances in vacuum sciences and applications are reviewed. Novel optical interferometer cavity devices enable pressure measurements with ppm accuracy.'),
('E37', 'Biotechnology in Human Health', 3, 'OE', 'B.Tech', 9, 2, 0, 6, 3, '4.330', 15, 'Biotechnology has offered modern medical devices for diagnostic and preventive purposes, which include diagnostic test kits, vaccines and radio-labeled biological therapeutics used for imaging and analysis.'),
('E38', 'Biomaterials in Tissue Engineering', 3, 'OE', 'B.Tech', 6, 0, 2, 5, 10, '4.440', 23, 'Biomaterials serve as an integral component of tissue engineering. They are designed to provide architectural framework reminiscent of native extracellular matrix in order to encourage cell growth and eventual tissue regeneration.'),
('E39', 'Fundamentals of Biomechanics ', 3, 'OE', 'B.Tech', 5, 0, 0, 2, 10, '3.750', 2, 'Fundamentals of Biomechanics  introduces the exciting world of how human movement is created and how it can be enhanced.  The course presents a comprehensive review of the major concepts of biomechanics and summarizes them in nine principles of biomechanics.'),
('E40', 'General Knowledge', 3, 'OE', 'B.Tech', 0, 0, 0, 10, 0, '1.000', 10, 'This course provides the student with an all round knowledge of the current facts and the justification behind them.');

-- --------------------------------------------------------

--
-- Table structure for table `coursetaken`
--

CREATE TABLE `coursetaken` (
  `RollNo` varchar(32) NOT NULL,
  `CourseCode` varchar(32) NOT NULL,
  `MonthYear` varchar(32) NOT NULL,
  `GradePoints` int(11) NOT NULL,
  `Grade` varchar(10) NOT NULL,
  `Semester` int(11) NOT NULL,
  `RealCourseCode` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursetaken`
--

INSERT INTO `coursetaken` (`RollNo`, `CourseCode`, `MonthYear`, `GradePoints`, `Grade`, `Semester`, `RealCourseCode`) VALUES
('15MX05', '14MX11', 'Dec2015', 7, 'C', 1, '15MX11'),
('15MX05', '14MX12', 'Dec2015', 9, 'A', 1, '15MX12'),
('15MX05', '14MX13', 'Dec2015', 7, 'C', 1, '15MX13'),
('15MX05', '14MX14', 'Dec2015', 6, 'D', 1, '15MX14'),
('15MX05', '14MX15', 'Dec2015', 7, 'C', 1, '15MX15'),
('15MX05', '14MX21', 'Dec2015', 8, 'B', 2, '15MX21'),
('15MX05', '14MX23', 'Dec2015', 9, 'A', 2, '15MX23'),
('15MX05', '14MX24', 'Dec2015', 7, 'C', 2, '15MX24'),
('15MX05', '14MX25', 'Dec2015', 7, 'C', 2, '15MX25'),
('15MX05', '14MX22', 'Dec2015', 7, 'C', 2, '15MX22'),
('15MX09', '14MX22', 'Dec2015', 7, 'C', 2, '15MX22'),
('15MX09', '14MX25', 'Dec2015', 8, 'B', 2, '15MX25'),
('15MX09', '14MX24', 'Dec2015', 7, 'C', 2, '15MX24'),
('15MX09', '14MX23', 'Dec2015', 8, 'B', 2, '15MX23'),
('15MX09', '14MX21', 'Dec2015', 8, 'B', 2, '15MX21'),
('15MX09', '14MX15', 'Dec2015', 6, 'D', 1, '15MX15'),
('15MX09', '14MX14', 'Dec2015', 9, 'A', 1, '15MX15'),
('15MX09', '14MX13', 'Dec2015', 8, 'B', 1, '15MX13'),
('15MX09', '14MX12', 'Dec2015', 9, 'A', 1, '15MX12'),
('15MX09', '14MX11', 'Dec2015', 7, 'C', 1, '15MX11'),
('15MX05', '14MX31', 'Nov2016', 8, 'B', 3, '15MX31'),
('15MX05', '14MX32', 'Nov2016', 9, 'A', 3, '15MX32'),
('15MX05', '14MX33', 'Nov2016', 7, 'C', 3, '15MX33'),
('15MX05', '14MX34', 'Nov2016', 6, 'D', 3, '15MX34'),
('15MX05', '14MXAA', 'Nov2016', 9, 'A', 3, '15MXAA'),
('15MX05', '14MX41', 'May2017', 8, 'B', 4, '15MX41'),
('15MX05', '14MX42', 'May2017', 9, 'A', 4, '15MX42'),
('15MX05', '14MX43', 'May2017', 7, 'C', 4, '15MX43'),
('15MX05', '14MXDD', 'May2017', 7, 'C', 4, '15MXDD'),
('15MX05', '14MXCC', 'May2017', 7, 'C', 4, '15MXCC');

-- --------------------------------------------------------

--
-- Table structure for table `currentcourse`
--

CREATE TABLE `currentcourse` (
  `sl_no` int(11) NOT NULL,
  `RollNo` varchar(32) NOT NULL,
  `CourseCode` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentcourse`
--

INSERT INTO `currentcourse` (`sl_no`, `RollNo`, `CourseCode`) VALUES
(1, '15MX05', 'E20'),
(8, '15MX05', 'E03');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptid` varchar(10) NOT NULL,
  `deptname` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptid`, `deptname`) VALUES
('CS', 'Computer Science and Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `generaldetails`
--

CREATE TABLE `generaldetails` (
  `RollNo` varchar(15) NOT NULL,
  `CurrentSem` int(11) NOT NULL,
  `CGPA` double NOT NULL,
  `SelectCourse` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generaldetails`
--

INSERT INTO `generaldetails` (`RollNo`, `CurrentSem`, `CGPA`, `SelectCourse`) VALUES
('15MX13', 5, 9.81, 0),
('15MX05', 5, 8.11, 0),
('15MX09', 5, 7.91, 0),
('15MX16', 5, 7.68, 0),
('15MX17', 5, 8.23, 0),
('15MX18', 5, 9.56, 0),
('15MX19', 5, 8.73, 0),
('15MX20', 5, 9.02, 0),
('15MX21', 5, 8.34, 0),
('15MX02', 5, 9.24, 0),
('15MX04', 5, 8.22, 0),
('15MX10', 5, 7.56, 0);

-- --------------------------------------------------------

--
-- Table structure for table `prerequirement`
--

CREATE TABLE `prerequirement` (
  `CourseCode` varchar(20) NOT NULL,
  `Prerequisite` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prerequirement`
--

INSERT INTO `prerequirement` (`CourseCode`, `Prerequisite`) VALUES
('15MXCB', '15MX11'),
('15MXCB', '15MX21'),
('15MXDA', '15MX24'),
('15MXDL', '15MX11'),
('15MXDL', '15MX21'),
('15MXDM', '15MX11'),
('15MXDM', '15MX21'),
('15MXDN', '15MX15');

-- --------------------------------------------------------

--
-- Table structure for table `selectedcourse`
--

CREATE TABLE `selectedcourse` (
  `RollNo` varchar(20) NOT NULL,
  `CourseCode` varchar(20) NOT NULL,
  `Sem` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selectedcourse`
--

INSERT INTO `selectedcourse` (`RollNo`, `CourseCode`, `Sem`) VALUES
('15MX05', 'E18', 5),
('15MX05', 'E13', 5),
('15MX05', 'E25', 5),
('15MX05', 'E29', 5),
('15MX05', 'E01', 5);

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `RollNo` varchar(15) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Dept` varchar(60) NOT NULL DEFAULT 'Computer Science and Engineering',
  `Program` varchar(60) NOT NULL DEFAULT 'B.Tech',
  `DateOfBirth` date NOT NULL,
  `BloodGroup` varchar(10) NOT NULL,
  `MobileParent` varchar(15) NOT NULL,
  `MobileStudent` varchar(15) NOT NULL,
  `Address` varchar(1024) NOT NULL,
  `ResStatus` varchar(30) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '1',
  `ImageFile` varchar(100) NOT NULL DEFAULT 'dummy.jpg',
  `Email` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`RollNo`, `FirstName`, `LastName`, `Dept`, `Program`, `DateOfBirth`, `BloodGroup`, `MobileParent`, `MobileStudent`, `Address`, `ResStatus`, `Password`, `Active`, `ImageFile`, `Email`) VALUES
('15MX13', 'Dibyanshu Shekhar', '', 'Computer Science and Engineering', 'B.Tech', '1997-06-10', 'A+', '9442761471', '9940836520', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'dibyanshu@gmail.com'),
('15MX05', 'Asmita', 'Chihnara', 'Computer Science and Engineering', 'B.Tech', '1997-12-22', 'A-', '9447586566', '9944290406', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'asmita@gmail.com'),
('15MX02', 'Monalisa', 'Mallick', 'Computer Science and Engineering', 'B.Tech', '1997-10-25', 'O-', '9897654978', '9097546721', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'monalisa@gmail.com'),
('15MX04', 'Debasis', 'Panda', 'Computer Science and Engineering', 'B.Tech', '1997-09-28', 'A+', '9439006212', '7205843423', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'debasis@gmail.com'),
('15MX09', 'Kasturi', 'Panda', 'Computer Science and Engineering', 'B.Tech', '1997-01-22', 'B+', '8978656781', '9976658912', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'kasturi@gmail.com'),
('15MX10', 'Arindum', 'Roy', 'Computer Science and Engineering', 'B.Tech', '1996-10-02', 'B+', '9786859832', '8796453245', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'arindum@gmail.com'),
('15MX16', 'Akankshya', 'Patra', 'Computer Science and Engineering', 'B.Tech', '1997-02-22', 'O-', '7895678935', '9600405678', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'akankshya@gmail.com'),
('15MX17', 'Swayambodha', 'Mohapatra', 'Computer Science and Engineering', 'B.Tech', '1998-05-27', 'AB+', '9098907651', '9800760052', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'swayambodha@gmail.com'),
('15MX18', 'Soumya Gourab', 'Sahoo', 'Computer Science and Engineering', 'B.Tech', '1997-09-26', 'AB-', '8976895423', '7896543560', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'soumya@gmail.com'),
('15MX19', 'Millenium', 'Bismay', 'Computer Science and Engineering', 'B.Tech', '1997-06-10', 'AB-', '9098767890', '8789690788', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'millenium@gmail.com'),
('15MX20', 'Shashank', 'Dash', 'Computer Science and Engineering', 'B.Tech', '1997-10-02', 'A+', '9908978689', '8877898756', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'shashank@gmail.com'),
('15MX21', 'Jijnasa', 'Nayak', 'Computer Science and Engineering', 'B.Tech', '1997-09-28', 'A-', '9988789421', '7656700213', 'Bhubaneswar', 'Boarder', 'password', 1, 'dummy.jpg', 'jijnasa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `studentsettings`
--

CREATE TABLE `studentsettings` (
  `RollNo` varchar(50) NOT NULL,
  `Grading` int(11) NOT NULL,
  `CourseLoad` int(11) NOT NULL,
  `Attendance` int(11) NOT NULL,
  `Practicality` int(11) NOT NULL,
  `Interactivity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsettings`
--

INSERT INTO `studentsettings` (`RollNo`, `Grading`, `CourseLoad`, `Attendance`, `Practicality`, `Interactivity`) VALUES
('15MX13', 8, 6, 35, 46, 92),
('15MX05', 10, 6, 59, 92, 6),
('15MX09', 60, 40, 15, 69, 37),
('15MX02', 70, 30, 15, 50, 17),
('15MX04', 38, 67, 43, 56, 24),
('15MX10', 35, 23, 56, 24, 67),
('15MX16', 34, 67, 87, 98, 25),
('15MX18', 38, 52, 17, 82, 50),
('15MX19', 45, 24, 63, 78, 65),
('15MX20', 14, 89, 65, 33, 66),
('15MX21', 15, 76, 31, 71, 96),
('15MX17', 96, 42, 33, 26, 89);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `rollno` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`rollno`, `password`, `email`, `firstname`, `lastname`) VALUES
('15mx13', 'password', 'dibyanshu@gmail.com', 'Dibyanshu ', 'Sekhar'),
('15mx05', 'password', 'asmita@gmail.com', 'Asmita ', 'Chihnara');

-- --------------------------------------------------------

--
-- Table structure for table `userrating`
--

CREATE TABLE `userrating` (
  `RollNo` varchar(15) NOT NULL,
  `CourseCode` varchar(15) NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrating`
--

INSERT INTO `userrating` (`RollNo`, `CourseCode`, `Rating`) VALUES
('15MX05', 'E15', 5),
('15MX05', 'E10', 5),
('15MX05', 'E20', 4);

--
-- Triggers `userrating`
--
DELIMITER $$
CREATE TRIGGER `updrate` AFTER INSERT ON `userrating` FOR EACH ROW UPDATE coursedetails set Rating=(Rating*TotalVotes+NEW.Rating)/(TotalVotes+1),TotalVotes=TotalVotes+1 where CourseCode=NEW.CourseCode
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `userreviews`
--

CREATE TABLE `userreviews` (
  `RollNo` varchar(15) NOT NULL,
  `CourseCode` varchar(15) NOT NULL,
  `Comment` text NOT NULL,
  `TimeOfComment` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreviews`
--

INSERT INTO `userreviews` (`RollNo`, `CourseCode`, `Comment`, `TimeOfComment`) VALUES
('15MX05', 'E12', 'If you are serious about placements you need to take this course. I will help you in lot more ways. ', '31-Jun-2017 18:56:22'),
('15MX05', 'E25', 'This is the best course If you are into networking.', '19-Oct-2017 06:49:07'),
('15MX09', 'E10', 'This course helped me to get a refresh on Data Structures. Worth it if you are opting for placements.', '3-Sept-2017 15:23:26'),
('15MX09', 'E02', 'Right course if you are into designing UI for applications', '16-Oct-2017 12:56:22'),
('15MX05', 'E20', 'A very well balanced OE course.', '22-Nov-2017 11:21:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccourses`
--
ALTER TABLE `ccourses`
  ADD PRIMARY KEY (`CourseCode`);

--
-- Indexes for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD PRIMARY KEY (`CourseCode`);

--
-- Indexes for table `coursetaken`
--
ALTER TABLE `coursetaken`
  ADD PRIMARY KEY (`RollNo`,`CourseCode`);

--
-- Indexes for table `currentcourse`
--
ALTER TABLE `currentcourse`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `generaldetails`
--
ALTER TABLE `generaldetails`
  ADD PRIMARY KEY (`RollNo`);

--
-- Indexes for table `prerequirement`
--
ALTER TABLE `prerequirement`
  ADD PRIMARY KEY (`CourseCode`,`Prerequisite`);

--
-- Indexes for table `selectedcourse`
--
ALTER TABLE `selectedcourse`
  ADD PRIMARY KEY (`RollNo`,`CourseCode`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`RollNo`);

--
-- Indexes for table `studentsettings`
--
ALTER TABLE `studentsettings`
  ADD PRIMARY KEY (`RollNo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `userrating`
--
ALTER TABLE `userrating`
  ADD PRIMARY KEY (`RollNo`,`CourseCode`);

--
-- Indexes for table `userreviews`
--
ALTER TABLE `userreviews`
  ADD PRIMARY KEY (`RollNo`,`CourseCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `currentcourse`
--
ALTER TABLE `currentcourse`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
