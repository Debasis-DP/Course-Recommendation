-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2017 at 09:49 PM
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
('E01', 'Fundamentals of Tissue Engineering', 3, 'OE', 'B.Tech', 7, 0, 8, 7, 5, '3.981', 56, 'This course involves the technologies, services, tools utilized by the industry to manage and troubleshoot the networks.'),
('E02', 'Materials in Medical Science', 3, 'OE', 'B.Tech', 8, 0, 3, 8, 6, '3.562', 90, 'This course builds an understanding of the core issues encountered in the design of wireless (vs wired) networks. It also exposes students to fairly recent paradigms in wireless communication.'),
('E03', ' Sports Biomechanics', 3, 'OE', 'B.Tech', 9, 0, 3, 5, 7, '3.925', 15, 'This course will introduce students to basic knowledge of the most current trends and issues related to computer, network, and web security and the investigative and technical skills required to overcome these threats.'),
('E04', 'Separation Technology', 3, 'OE', 'B.Tech', 10, 3, 5, 4, 2, '4.096', 72, 'This introductory course on Cloud computing will teach both the fundamental concepts of how and why Cloud systems works, as well as Cloud technologies that manifest these concepts. Students will learn distributed systems concepts like virtualization, data parallelism etc.'),
('E05', 'Introduction to Ceramics', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 2, '3.938', 67, 'This course covers the technologies involved in integrating front-end mobile devices into local and global networks.'),
('E06', 'Ceramics in Electronic Applications', 3, 'OE', 'B.Tech', 10, 0, 0, 2, 2, '4.413', 45, 'This course will introduce students to mobile computing and mobile application development and also give an overview of various mobile computing applications, technologies and wireless communication.'),
('E07', 'Operating Systems', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '3.754', 46, 'This course gives an introduction to computer forensics and investigation, and provides a taster in understanding how to conduct investigations to correctly gather, analyse and present digital evidence to both business and legal audiences.'),
('E08', 'Chemical Kinetics', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '3.530', 71, 'The course focuses on advanced computer architectures, parallel algorithms, parallel languages, and performance-oriented computing. '),
('E09', 'Introduction to Material Chemistry', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 7, '4.388', 32, 'This course is an indepth study of a broad range of topics and techniques in the areas of social media analytics, web mining and social network analysis.'),
('E10', 'Optical Spectroscopy: Methods and Applications', 3, 'OE', 'B.Tech', 7, 10, 0, 0, 4, '4.849', 71, 'This course provides information about Current XML application areas and uses. Indepth knowledge of XML based technology and its application. XML application areas and environments, use of XML on server side and databases, XML in .NET environment.'),
('E11', 'Fundamentals of Communication Systems', 3, 'OE', 'B.Tech', 10, 2, 0, 0, 1, '4.580', 70, 'This course aims to provide the basic overview of the Semantic Web in particular, and data semantics in general, and how they can be applied to enhance data integration and knowledge inference.'),
('E12', 'Soft Computing Techniques', 3, 'OE', 'B.Tech', 4, 0, 8, 2, 9, '4.854', 86, 'This course will present an introduction to algorithms for machine learning and data mining.'),
('E13', 'Power Generation Systems', 3, 'OE', 'B.Tech', 4, 0, 7, 5, 10, '4.050', 101, 'This course provides an introduction to the basic concepts of Soft Computing methodology and covers three main components Neural Networks, Fuzzy Logic, Genetic Algorithms. Etc'),
('E14', 'Utilization of Electrical Energy', 3, 'OE', 'B.Tech', 6, 0, 7, 8, 9, '3.805', 13, 'Methods & techniques within the field of artificial intelligence, including problem solving and optimisation by search, representing and reasoning with uncertain knowledge and machine learning.'),
('E15', 'Systems and Signal Processing', 3, 'OE', 'B.Tech', 8, 0, 0, 0, 2, '3.844', 25, 'This course exposes students to the basic principles of bioinformatics and computational biology.'),
('E16', 'Communicative English', 3, 'OE', 'B.Tech', 4, 0, 0, 2, 9, '4.960', 71, 'Computational systems inspired by natural evolution; natural and artificial evolution, evolutionary; chromosome representations; search operators; co-evolution; constraint handling techniques; niching and speciation; genetic programming; classifier systems and theoretical foundations; implementation of selected algorithms.'),
('E17', 'Post-Liberalization Transformations in India', 3, 'OE', 'B.Tech', 7, 0, 8, 6, 1, '3.770', 17, 'This course provides a systematic approach with an in-depth analysis of advanced database areas as well as the basics of database management systems.'),
('E18', 'Managerial Economics ', 3, 'OE', 'B.Tech', 9, 0, 0, 0, 1, '4.967', 86, 'Information Storage and Management (ISM) is a unique course that provides a comprehensive understanding of the various storage infrastructure components in data center environments.'),
('E19', 'Science of Consciousness in Ancient India', 3, 'OE', 'B.Tech', 10, 0, 0, 0, 0, '4.026', 79, 'The course will cover emerging problems associated with the rapid growth in energy consumption of modern computing infrastructures, including data centers, and discuss recent research focused on mitigating these problems.'),
('E20', 'Introduction to Cultural Studies', 3, 'OE', 'B.Tech', 8, 0, 10, 6, 4, '4.729', 33, 'The course discusses advanced data structures: heaps, balanced binary search trees, hashing tables, red-black trees, B-trees and their variants, structures for disjoint sets, binomial heaps, Fibonacci heaps, finger trees, persistent data structures, etc. '),
('E21', 'Introduction to the Metaphysics of Sanskrit Langua', 3, 'OE', 'B.Tech', 7, 0, 0, 2, 6, '3.567', 22, 'The course teaches both the architecture of modern multi-core/many-core processors and the parallel programming principles to exploit the computational power of multi-core/many-core processors.'),
('E22', 'Language and Writing', 3, 'OE', 'B.Tech', 6, 1, 0, 5, 9, '4.100', 23, 'This course focuses on a graph algorithms. It provides basic concepts and facts from the graph theory and algorithms for solving different problems on graphs.'),
('E23', 'Science, Technology and Society', 3, 'OE', 'B.Tech', 8, 0, 0, 2, 8, '3.750', 12, 'This course provides a comprehensive introduction to computer graphics modeling, animation, and rendering. Topics covered include basic image processing, geometric transformations, geometric modeling of curves and surfaces'),
('E24', 'Educational Psychology', 3, 'OE', 'B.Tech', 8, 9, 0, 2, 0, '4.220', 37, 'This course will cover the fundamentals of Free and Open Source software development.'),
('E25', 'Public Economics ', 3, 'OE', 'B.Tech', 10, 0, 0, 5, 0, '4.550', 26, 'This course teaches the theory, design procedure, and programming practices behind effective human interaction with computers.'),
('E26', 'International Trade and Development ', 3, 'OE', 'B.Tech', 8, 0, 1, 3, 4, '4.020', 7, 'This course is an introduction to software design patterns. The course covers the rationale and benefits of object-oriented software design patterns.'),
('E27', 'Microbial Genetics', 3, 'OE', 'B.Tech', 8, 3, 0, 3, 1, '4.320', 5, 'This course is an introduction to the fundamentals of game theory and mechanism design. The course emphasizes theoretical foundations, mathematical tools, modeling, and equilibrium notions in different environments.'),
('E28', 'Plant Biotechnology', 3, 'OE', 'B.Tech', 4, 0, 7, 5, 8, '4.420', 31, 'This course is an overview course in Data Science and covers the applications and technologies (data analytics and clouds) needed to process the application data.'),
('E29', 'Discrete Mathematics', 3, 'OE', 'B.Tech', 5, 0, 8, 5, 9, '4.320', 21, 'This course seeks to present you with a wide range of data analytic techniques and is structured around the broad contours of the different types of data analytics.'),
('E30', 'Finite Element Analysis', 3, 'OE', 'B.Tech', 8, 2, 2, 3, 1, '4.250', 32, 'This course considers at the Internet of Things (IoT) as the general theme of real  world things becoming increasingly visible and actionable via Internet and Web technologies.'),
('E31', 'Computer Added Design', 3, 'OE', 'B.Tech', 9, 0, 2, 0, 0, '3.890', 11, 'This course deals with the Principles of software project management, metrics, cost estimation, software project planning, organizing, resource allocation, directing and controlling, riskmanagement, software configuration management, role of standards,management tools etc.'),
('E32', 'Industrial Management', 3, 'OE', 'B.Tech', 9, 0, 1, 0, 1, '4.310', 25, 'This course addresses contemporary issues in managing knowledge, intellectual capital and other intangible assets.'),
('E33', 'Principle and Practice of Heat Treatments', 3, 'OE', 'B.Tech', 9, 0, 0, 5, 1, '4.050', 3, 'This course introduces students to the theories, concepts and terminology of the discipline of organizational behavior.'),
('E34', 'Expermental Techniques in Materials Engineering', 3, 'OE', 'B.Tech', 8, 0, 0, 0, 4, '3.880', 2, 'It aims to provide an understanding of the main accounting concepts and the practical use of accounting and financial information for decision making and the achievement of business goals.'),
('E35', 'Science of Nano-materials', 3, 'OE', 'B.Tech', 8, 0, 0, 2, 3, '4.180', 10, 'This course is designed to help students evaluate the business skills and commitment necessary to successfully operate an entrepreneurial venture and review the challenges and rewards of entrepreneurship.'),
('E36', 'Vacuum Science and Applications', 3, 'OE', 'B.Tech', 9, 2, 1, 3, 6, '4.300', 6, 'This course will cover the major techniques for mining and analyzing text data to discover interesting patterns, extract useful knowledge, and support decision making.'),
('E37', 'Biotechnology in Human Health', 3, 'OE', 'B.Tech', 9, 2, 0, 6, 3, '4.330', 15, 'This course will examine the design, implementation, and evaluation of information retrieval systems.'),
('E38', 'Biomaterials in Tissue Engineering', 3, 'OE', 'B.Tech', 6, 0, 2, 5, 10, '4.440', 23, 'This course provides an introduction to basic numerical methods for the solution of a number of classes of scientific problems.'),
('E39', 'Fundamentals of Biomechanics ', 3, 'OE', 'B.Tech', 5, 0, 0, 2, 10, '3.750', 2, 'The course will include seminars in which modeling issues are discussed, lectures to provide mathematical background, and computational experiments.');

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
(2, '15MX05', 'E20'),
(3, '15MX05', 'E01');

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
  `Dept` varchar(60) NOT NULL,
  `Program` varchar(60) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `BloodGroup` varchar(10) NOT NULL,
  `MobileParent` varchar(15) NOT NULL,
  `MobileStudent` varchar(15) NOT NULL,
  `Address` varchar(1024) NOT NULL,
  `ResStatus` varchar(30) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Active` int(11) NOT NULL,
  `ImageFile` varchar(100) NOT NULL,
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
('15MX05', 28, 2, 4, 43, 83),
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
('15MX05', 'E10', 5);

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
('15MX09', 'E02', 'Right course if you are into designing UI for applications', '16-Oct-2017 12:56:22');

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
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
