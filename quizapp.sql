-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 04:36 PM
-- Server version: 8.0.26
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

CREATE TABLE `tbl_app` (
  `app_id` int UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`, `added_date`, `updated_date`, `image_name`) VALUES
(1, 'Vijay Thapa Online Exam System', 'hi@vijaythapa.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '9866296009', '2017-04-03', '2020-12-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE `tbl_faculty` (
  `faculty_id` int UNSIGNED NOT NULL,
  `faculty_name` varchar(150) NOT NULL,
  `time_duration` int NOT NULL,
  `qns_per_set` int NOT NULL,
  `total_english` int UNSIGNED NOT NULL,
  `total_math` int UNSIGNED NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`faculty_id`, `faculty_name`, `time_duration`, `qns_per_set`, `total_english`, `total_math`, `is_active`, `added_date`, `updated_date`) VALUES
(2, 'GRE', 180, 5, 1, 4, 'yes', '2017-04-04', '2017-06-12'),
(30102, '30102', 5, 8, 6, 2, 'yes', '2017-04-04', '2017-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `question_id` int UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `fifth_answer` varchar(255) NOT NULL,
  `answer` int NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `faculty` int NOT NULL,
  `variation` varchar(255) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `fifth_answer`, `answer`, `reason`, `marks`, `category`, `faculty`, `variation`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(17, 'Following two expressions  $2 \\times 4$ and $19 - 11$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $2 \\times 4$ आणि  $19 - 11$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'False <br> # चूक', 'True <br> # बरोबर', '', '', 'null', 2, 'Answer - True<br>In mathematics we can equate any two expressions if the values of both sides of expressions are equal.<br>Here, $ 2 \\times 4 = 8 $ and $ 19 - 11 = 8 $<br>Since both the given expressions are giving the same value we can equate these two to form an equation.<br>$2 \\times 4 = 19 - 11$<br> # उत्तर - बरोबर <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हा ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 2 \\times 4 = 8 $ आणि $ 19 - 11 = 8 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान आहे. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येतील.<br>$2 \\times 4 = 19 - 11$', '4', '1', 30102, '1', 'yes', NULL, NULL, NULL),
(18, 'Following two expressions  $5 \\times 4$ and $18 + 2$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $5 \\times 4$ आणि  $18 + 2$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'False <br> # चूक', 'True <br> # बरोबर', '', '', 'null', 2, 'Answer - True<br>In mathematics we can equate any two expressions if the values of both sides of expressions are equal.<br>Here, $ 5 \\times 4 = 20 $ and $ 18 + 2 = 20 $<br>Since both the given expressions are giving the same value we can equate these two to form an equation.<br>$5 \\times 4 = 18 + 2$<br> # उत्तर - बरोबर <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हा ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 5 \\times 4 = 20 $ आणि $ 18 + 2 = 20 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान आहे. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येतील.<br>$5 \\times 4 = 18 + 2$', '4', '1', 30102, '1', 'yes', NULL, NULL, NULL),
(19, 'Following two expressions  $6 \\times 3$ and $15 + 3$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $6 \\times 3$ आणि  $15 + 3$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'False <br> # चूक', 'True <br> # बरोबर', '', '', 'null', 2, 'Answer - True<br>In mathematics we can equate any two expressions if the values of both sides of expressions are equal.<br>Here, $ 6 \\times 3 = 18 $ and $ 15 + 3 = 18 $<br>Since both the given expressions are giving the same value we can equate these two to form an equation.<br>$6 \\times 3 = 15 + 3$<br> # उत्तर - बरोबर <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हा ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 6 \\times 3 = 18 $ आणि $ 15 + 3 = 18 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान आहे. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येतील.<br>$6 \\times 3 = 15 + 3$', '4', '1', 30102, '1', 'yes', NULL, NULL, NULL),
(20, 'Following two expressions  $11 - 5$ and $1 + 5$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $11 - 5$ आणि  $1 + 5$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'False <br> # चूक', 'True <br> # बरोबर', '', '', 'null', 2, 'Answer - True<br>In mathematics we can equate any two expressions if the values of both sides of expressions are equal.<br>Here, $ 11 - 5 = 6 $ and $ 1 + 5 = 6 $<br>Since both the given expressions are giving the same value we can equate these two to form an equation.<br>$11 - 5 = 1 + 5$<br> # उत्तर - बरोबर <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हा ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 11 - 5 = 6 $ आणि $ 1 + 5 = 6 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान आहे. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येतील.<br>$11 - 5 = 1 + 5$', '4', '1', 30102, '1', 'yes', NULL, NULL, NULL),
(21, 'Following two expressions  $23 + 24$ and $3 \\times 4$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $23 + 24$ आणि  $3 \\times 4$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'True <br> # बरोबर', 'False <br> # चूक', '', '', 'null', 2, 'Answer - False <br>In mathematics we can equate any two expressions if the values of both sides of the expressions are equal.<br>Here, $ 23 + 24 = 47 $ and $ 3 \\times 4 = 12 $<br>Since both these expressions are not giving same value we can not equate these two, to form an equation.<br>$23 + 24 ≠ 3 \\times 4$<br> # उत्तर - चूक <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हाच ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 23 + 24 = 47 $ आणि $ 3 \\times 4 = 12 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान नाही. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येणार नाहीत.<br>$23 + 24 ≠ 3 \\times 4$', '4', '2', 30102, '2', 'yes', NULL, NULL, NULL),
(22, 'Following two expressions  $23 + 24$ and $3 \\times 4$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $23 + 24$ आणि  $3 \\times 4$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'True <br> # बरोबर', 'False <br> # चूक', '', '', 'null', 2, 'Answer - False <br>In mathematics we can equate any two expressions if the values of both sides of the expressions are equal.<br>Here, $ 23 + 24 = 47 $ and $ 3 \\times 4 = 12 $<br>Since both these expressions are not giving same value we can not equate these two, to form an equation.<br>$23 + 24 ≠ 3 \\times 4$<br> # उत्तर - चूक <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हाच ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 23 + 24 = 47 $ आणि $ 3 \\times 4 = 12 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान नाही. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येणार नाहीत.<br>$23 + 24 ≠ 3 \\times 4$', '4', '2', 30102, '2', 'yes', NULL, NULL, NULL),
(23, 'Following two expressions  $5 \\times 5$ and $0 + 5$ will form two sides (LHS and RHS) of an equation. <br> # खाली दिलेली दोन विधाने  $5 \\times 5$ आणि  $0 + 5$ मिळून समीकरण (डावी बाजू = उजवी बाजू) बनवू शकतात.', 'True <br> # बरोबर', 'False <br> # चूक', '', '', 'null', 2, 'Answer - False <br>In mathematics we can equate any two expressions if the values of both sides of the expressions are equal.<br>Here, $ 5 \\times 5 = 25 $ and $ 0 + 5 = 5 $<br>Since both these expressions are not giving same value we can not equate these two, to form an equation.<br>$5 \\times 5 ≠ 0 + 5$<br> # उत्तर - चूक <br>जेंव्हा दोन गणिती विधानांचे मूल्य समान असते तेव्हाच ती दोन विधाने समीकरण पध्दतीने मांडता येतात.<br>$ 5 \\times 5 = 25 $ आणि $ 0 + 5 = 5 $ <br>येथे दिलेल्या दोन्ही गणिती विधानांचे मूल्य समान नाही. त्यामुळे दिलेली दोन्ही विधाने मिळून समीकरण पध्दतीने मांडता येणार नाहीत.<br>$5 \\times 5 ≠ 0 + 5$', '4', '2', 30102, '2', 'yes', NULL, NULL, NULL),
(24, 'Petrol Pump is $450$ metres from Hospital. Restaurant is $50$ metres from Hospital. Assuming Petrol Pump and Restaurant are in the same direction from Hospital which of the following statement is correct?<br>#पेट्रोल पंप आणि रुग्णालय यातील अंतर $450$ मी आहे. उपहारगृह आणि रुग्णालय यातील अंतर $50$ मी आहे. पेट्रोल पंप आणि उपहारगृह हे रुग्णालया पासून एकाच दिशेने आहेत. तर खालील पैकी कोणते विधान बरोबर आहे?', 'Restaurant is at same distance from Hospital and Petrol Pump<br>#उपहारगृह हे रुग्णालय आणि पेट्रोल पंप या दोन्ही पासून समान अंतरावर आहे', 'Distance between Hospital and Restaurant and that of between Restaurant and Petrol Pump is not equal<br>#रुग्णालय आणि उपहारगृह हे अंतर आणि पेट्रोल पंप आणि उपहारगृह हे अंतर समान नाही', 'Distance between Hospital and Petrol Pump and that of between Restaurant and Petrol Pump is equal<br>#रुग्णालय आणि पेट्रोल पंप हे अंतर आणि पेट्रोल पंप आणि उपहारगृह हे अंतर समान आहे', 'Distance between Hospital and Restaurant and that of between Restaurant and Petrol Pump is equal<br>#रुग्णालय आणि उपहारगृह हे अंतर आणि पेट्रोल पंप आणि उपहारगृह हे अंतर समान आहे', 'null', 2, 'Answer: Distance between Hospital and Restaurant and that of between Restaurant and Petrol Pump is not equal <br> Distance between Hospital and Petrol Pump = $450\\ m$<br>Distance between Hospital and Restaurant = $50\\ m$<br>$\\therefore$ Distance between Petrol Pump and Restaurant = $400\\ m$<br>This shows that neither of the distances are equal. <br># उत्तर: रुग्णालय आणि उपहारगृह हे अंतर आणि पेट्रोल पंप आणि उपहारगृह हे अंतर समान नाही <br> रुग्णालय आणि पेट्रोल पंप यातील अंतर = $450$ मी <br>रुग्णालय आणि उपहारगृह यातील अंतर = $50$ मी <br>$\\therefore$ पेट्रोल पंप आणि उपहारगृह यातील अंतर = $400$ मी <br>या वरून आपल्याला हे कळते की कोणत्याच दोन ठिकाणांमधील अंतर समान नाही.', '4', '3', 30102, '105', 'yes', NULL, NULL, NULL),
(25, 'Library is $850$ metres from Supermarket. Coffee Shop is $250$ metres from Supermarket. Assuming Library and Coffee Shop are in the opposite direction from Supermarket which of the following statement is correct?<br>#ग्रंथालय आणि सुपरमार्केट यातील अंतर $850$  मी आहे. सुपरमार्केट पासून कॉफी शॉप $250$ मी अंतरावर आहे. कॉफी शॉप आणि ग्रंथालय हे दोन्ही सुपरमार्केट पासून एकमेकांच्या विरुद्ध दिशेला आहेत. तर खालील पैकी कोणते विधान बरोबर आहे?', 'Supermarket is at equal distance from Library and Coffee Shop both<br>#सुपरमार्केट हे ग्रंथालय आणि कॉफी शॉप या पासून समान अंतरावर आहे', 'Supermarket is not at equal distance from Coffee Shop and Library both<br>#सुपरमार्केट हे कॉफी शॉप आणि ग्रंथालय या पासून समान अंतरावर नाही', 'Distance between Supermarket and Library and distance between Coffee Shop and Library is equal<br>#ग्रंथालय आणि सुपरमार्केट, तसेच ग्रंथालय आणि कॉफी शॉप यातील अंतर समान आहे', 'Distance between Coffee Shop and Supermarket and distance between Coffee Shop and Library is equal<br>#कॉफी शॉप आणि सुपरमार्केट, तसेच कॉफी शॉप आणि ग्रंथालय यातील अंतर समान आहे', 'null', 2, 'Answer: Supermarket is not at equal distance from Coffee Shop and Library both <br> Distance between Supermarket and Library = $850\\ m$<br>Distance between Supermarket and Coffee Shop = $250\\ m$<br>$\\therefore$ Distance of Supermarket from Library and Coffee Shop is not equal <br># उत्तर: सुपरमार्केट हे कॉफी शॉप आणि ग्रंथालय या पासून समान अंतरावर नाही <br> सुपरमार्केट आणि ग्रंथालय मधील अंतर = $850$ मी<br> सुपरमार्केट आणि कॉफी शॉप मधील अंतर = $250$ मी<br>$\\therefore$ सुपरमार्केट हे ग्रंथालय आणि कॉफी शॉप या पासून समान अंतरावर नाही.', '4', '3', 30102, '106', 'yes', NULL, NULL, NULL),
(26, 'Petrol Pump is $350$ metres from Supermarket. Police Station is $300$ metres from Salon. Which of the following statement is correct?<br>#पेट्रोल पंप आणि सुपरमार्केट यातील अंतर $350$ मी आहे. तर पोलीस चौकी आणि सलून यातील अंतर $300$ मी आहे. तर खालील पैकी कोणते विधान बरोबर आहे?', 'Distance between Petrol Pump and Supermarket is equal to distance between Police Station and Salon<br>#पेट्रोल पंप ते सुपरमार्केट यातील अंतर आणि पोलीस चौकी ते सलून यातील अंतर समान आहे', 'Distance between Petrol Pump and Supermarket is not equal to distance between Police Station and Salon<br>#पेट्रोल पंप ते सुपरमार्केट यातील अंतर आणि पोलीस चौकी ते सलून यातील अंतर समान नाही', 'Distance between Petrol Pump and Police Station is same as distance between Supermarket and Salon<br>#पेट्रोल पंप ते पोलीस चौकी यातील अंतर आणि सुपरमार्केट ते सलून यातील अंतर समान आहे', 'Distance between Petrol Pump and Salon is same as distance between Police Station and Salon<br>#पेट्रोल पंप ते सलून यातील अंतर आणि पोलीस चौकी ते सलून यातील अंतर समान आहे', 'null', 2, 'Answer: Distance between Petrol Pump and Supermarket is not equal to distance between Police Station and Salon <br> Distance between Petrol Pump and Supermarket = $350\\ m$<br> Distance between Police Station and Salon = $300\\ m$<br> Other distances mentioned in options are not known and can\'t be found out. $\\therefore$ distances given in statement are not equal.<br># उत्तर: पेट्रोल पंप ते सुपरमार्केट यातील अंतर आणि पोलीस चौकी ते सलून यातील अंतर समान नाही <br> पेट्रोल पंप ते सुपरमार्केट यातील अंतर = $350$ मी आहे.<br> पोलीस चौकी ते सलून यातील अंतर = $300$ मी आहे. <br> पर्यायामध्ये उल्लेख केलेली अंतरे माहिती नहित आणि ठरवता पण येत नाहीत. म्हणून विधानात विचारलेली अंतरे समान नाहीत. <br>', '4', '3', 30102, '108', 'yes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `result_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `user_answer` int UNSIGNED NOT NULL,
  `right_answer` int UNSIGNED NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `student_id`, `question_id`, `user_answer`, `right_answer`, `added_date`) VALUES
(59, 2, 17, 2, 2, '2021-10-22'),
(60, 2, 19, 2, 2, '2021-10-22'),
(61, 2, 18, 2, 2, '2021-10-22'),
(62, 2, 20, 2, 2, '2021-10-22'),
(63, 2, 21, 1, 2, '2021-10-22'),
(64, 2, 20, 1, 2, '2021-10-22'),
(65, 2, 17, 1, 2, '2021-10-22'),
(66, 2, 19, 2, 2, '2021-10-22'),
(67, 2, 26, 2, 2, '2021-10-22'),
(68, 2, 24, 3, 2, '2021-10-22'),
(69, 2, 22, 2, 2, '2021-10-22'),
(70, 2, 18, 2, 2, '2021-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_summary`
--

CREATE TABLE `tbl_result_summary` (
  `summary_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_result_summary`
--

INSERT INTO `tbl_result_summary` (`summary_id`, `student_id`, `marks`, `added_date`) VALUES
(30, 1, '0.00', '2021-10-22'),
(31, 2, '16.00', '2021-10-22'),
(32, 2, '16.00', '2021-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `gender`, `faculty`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'Student', 'Thapa', 'student@gmail.com', 'student', 'student', '98367253', 'male', '30102', 'yes', '2017-06-27', '2021-10-22'),
(2, 'hemkesh', 'raina', 'hemkeshraina@gmail.com', 'hemkesh', 'hemkesh', '8527049688', 'Male', '30102', 'no', '2021-10-21', '2021-10-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `app_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `faculty_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30103;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `result_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_result_summary`
--
ALTER TABLE `tbl_result_summary`
  MODIFY `summary_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
