-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 06:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uboighar`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_active_reqbook`
--

CREATE TABLE `adm_active_reqbook` (
  `id` int(11) NOT NULL,
  `req_title` varchar(400) NOT NULL,
  `req_author` varchar(400) NOT NULL,
  `req_edition` varchar(4) NOT NULL,
  `req_quantity` int(4) NOT NULL,
  `req_phone` varchar(11) NOT NULL,
  `req_address` varchar(500) NOT NULL,
  `status` int(2) NOT NULL,
  `req_bookimg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_active_reqbook`
--

INSERT INTO `adm_active_reqbook` (`id`, `req_title`, `req_author`, `req_edition`, `req_quantity`, `req_phone`, `req_address`, `status`, `req_bookimg`) VALUES
(5, 'C Programming language ', 'Thomas H. Cormen', '5th', 3, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 2, 'user_1623297584_119659305.png'),
(6, 'Discrete mathematics', 'Thomas H. Cormen', '3rf', 4, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623303589_940489891.png'),
(7, 'Discrete mathematics', 'Thomas H. Cormen', '3rf', 4, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623303589_940489891.png'),
(8, 'Introduction to Algorithm', 'Thomas H. Cormen', '4th', 3, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623296548_922352543.png'),
(9, 'C Programming language ', 'Thomas H. Cormen', '5th', 5, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623297584_119659305.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_banner`
--

CREATE TABLE `adm_banner` (
  `ban_id` int(11) NOT NULL,
  `ban_title` varchar(100) NOT NULL,
  `ban_subtitle` text NOT NULL,
  `ban_btn` varchar(30) NOT NULL,
  `ban_url` varchar(300) NOT NULL,
  `ban_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_banner`
--

INSERT INTO `adm_banner` (`ban_id`, `ban_title`, `ban_subtitle`, `ban_btn`, `ban_url`, `ban_image`) VALUES
(1, 'UBoiGhar Special Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Order Now', '#abc', 'banner_1614836752_371541318.jpg'),
(3, '50% OFF BEST OFFERS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Buy Now', '#abc', 'banner_1614838053_310238036.jpg'),
(4, 'NEW COLLECTION WITH 50% OFF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Order Now', '#abc', 'banner_1614838157_419025777.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adm_bestsellbook`
--

CREATE TABLE `adm_bestsellbook` (
  `id` int(11) NOT NULL,
  `book_title` varchar(30) NOT NULL,
  `book_author` varchar(400) NOT NULL,
  `book_edition` varchar(4) NOT NULL,
  `book_price` varchar(7) NOT NULL,
  `book_stock` varchar(3) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `book_flag` varchar(10) NOT NULL,
  `book_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_bestsellbook`
--

INSERT INTO `adm_bestsellbook` (`id`, `book_title`, `book_author`, `book_edition`, `book_price`, `book_stock`, `short_desc`, `description`, `book_flag`, `book_img`) VALUES
(1, 'SQL Computer Programming', '', '3rd', '1500', '12', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615345881_218589554.png'),
(3, 'C Programming language ', '', '3rd', '1500', '11', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615346027_877038019.png'),
(4, 'Python for Beginners', '', '3rd', '1200', '11', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615346074_869779353.png'),
(5, 'Introduction to Algorithm', 'Saifur', '4rd', '1200', '12', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1616309742_952216257.png'),
(7, 'SQL Computer Programming', '', '3rd', '1500', '12', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615345881_218589554.png'),
(8, 'C Programming language ', '', '3rd', '1500', '11', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615346027_877038019.png'),
(9, 'Python for Beginners', '', '3rd', '1200', '11', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1615346074_869779353.png'),
(10, 'Introduction to Algorithm', 'Saifur', '4rd', '1200', '12', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered', '1', 'user_1616309742_952216257.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_billing_info`
--

CREATE TABLE `adm_billing_info` (
  `id` int(11) NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `paymentMethod` varchar(100) NOT NULL,
  `paymentNumber` varchar(15) NOT NULL,
  `transactionId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_billing_info`
--

INSERT INTO `adm_billing_info` (`id`, `fullname`, `email`, `mobile`, `address`, `city`, `zipcode`, `paymentMethod`, `paymentNumber`, `transactionId`) VALUES
(1, 'saifur', 'fazla223344@gmail.com', '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 'Tupelo', 'sdasd', 'Bkash', '01309080748', '01309080748'),
(2, 'saifur', 'fazla223344@gmail.com', '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 'Tupelo', 'sdasd', 'Bkash', '01309080748', '01309080748'),
(3, 'saifur', 'fazla223344@gmail.com', '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 'Tupelo', 'sdasd', 'Bkash', '01309080748', '01309080748'),
(4, 'saifur', 'saifurnstuiit223344@gmail.com', '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 'Tupelo', 'ffj', '', '01309080748', '01309080748'),
(5, 'saifur', 'fazla223344@gmail.com', '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 'Tupelo', 'sdasd', 'Bkash', '01309080748', '01309080748');

-- --------------------------------------------------------

--
-- Table structure for table `adm_contact`
--

CREATE TABLE `adm_contact` (
  `id` int(20) NOT NULL,
  `conus_name` varchar(30) NOT NULL,
  `conus_phone` varchar(20) NOT NULL,
  `conus_email` varchar(30) NOT NULL,
  `conus_sub` varchar(70) NOT NULL,
  `conus_mess` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_contact`
--

INSERT INTO `adm_contact` (`id`, `conus_name`, `conus_phone`, `conus_email`, `conus_sub`, `conus_mess`) VALUES
(1, 'saifur', '01309080748', 'sivlu@gmail.com', 'important info', 'adm_contact'),
(2, 'sivlu', '01309080748', 'sivlu@gmail.com', 'important info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(3, 'saifur', '01309080748', 'sivlu@gmail.com', 'important info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(6, 'sivlu', '01309080748', 'saif@gmail.com', 'important info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(8, 'saifur', '01309080748', 'saif@gmail.com', 'important info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

-- --------------------------------------------------------

--
-- Table structure for table `adm_donatebook`
--

CREATE TABLE `adm_donatebook` (
  `donate_id` int(11) NOT NULL,
  `book_title` varchar(30) NOT NULL,
  `book_subtitle` varchar(250) NOT NULL,
  `book_category` varchar(25) NOT NULL,
  `book_doner` varchar(30) NOT NULL,
  `book_price` varchar(20) NOT NULL,
  `book_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_donatebook`
--

INSERT INTO `adm_donatebook` (`donate_id`, `book_title`, `book_subtitle`, `book_category`, `book_doner`, `book_price`, `book_img`) VALUES
(1, 'data Science ', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Engineering Faculty', 'IT Club', '00.00', 'user_1614924372_721469709.png'),
(2, 'Introduction to Algorithms ', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Engineering Faculty', 'IT Club', '00.00', 'user_1614924540_280297807.png'),
(3, 'Design Patterns', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Engineering Faculty', 'IT Club', '00.00', 'user_1614924540_280297807.png'),
(5, 'Design Patterns', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Engineering Faculty', 'IT Club', '00.00', 'user_1614924540_280297807.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_donate_book_request`
--

CREATE TABLE `adm_donate_book_request` (
  `id` int(11) NOT NULL,
  `fullname` varchar(70) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `rollid` varchar(15) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `reason` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_donate_book_request`
--

INSERT INTO `adm_donate_book_request` (`id`, `fullname`, `email`, `department`, `rollid`, `book_title`, `reason`) VALUES
(5, 'saifur', 'fazla223344@gmail.com', 'software', 'ASH1825031M', 'Introduction to Algorithm', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, '),
(6, 'Rezaul Karim', 'reza2213@gmail.com', 'FTNS', 'ASH1825031M', 'Nutrition Science ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ');

-- --------------------------------------------------------

--
-- Table structure for table `adm_earnmoney_order_accept`
--

CREATE TABLE `adm_earnmoney_order_accept` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `btitle` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_earnmoney_order_accept`
--

INSERT INTO `adm_earnmoney_order_accept` (`id`, `fname`, `mobile`, `btitle`) VALUES
(1, 'saifur', '01309080748', 'Design Pattern'),
(2, 'saifur', '01309080748', 'Discrete Math');

-- --------------------------------------------------------

--
-- Table structure for table `adm_event`
--

CREATE TABLE `adm_event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `event_subtitle` varchar(1000) NOT NULL,
  `event_speaker` varchar(50) NOT NULL,
  `event_date` int(2) NOT NULL,
  `event_month` varchar(20) NOT NULL,
  `event_time` varchar(20) NOT NULL,
  `event_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_event`
--

INSERT INTO `adm_event` (`event_id`, `event_title`, `event_subtitle`, `event_speaker`, `event_date`, `event_month`, `event_time`, `event_img`) VALUES
(1, 'Learning Spoken English', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Alexzender', 25, 'SEP, 2018', '05:23 AM - 09:23 AM', 'user_1614880382_51137996.png'),
(2, 'Admission Fair 2017', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Alexzender', 25, 'SEP, 2018', '05:23 AM - 09:23 AM', 'user_1614880382_51137996.png'),
(3, 'New Year Book Fair 2021', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Alexzender', 25, 'SEP, 2020', '05:23 AM - 09:23 AM', 'user_1614881624_698777303.png'),
(4, 'Noboborsho Book Fair', 'Event is veries fermentum consequat mi fonec has fermentum ellentesque malesuada.', 'Alexzender', 25, 'SEP, 2020', '05:23 AM - 09:23 AM', 'user_1614881699_102298478.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_faq`
--

CREATE TABLE `adm_faq` (
  `id` int(20) NOT NULL,
  `faq_name` varchar(50) NOT NULL,
  `faq_email` varchar(50) NOT NULL,
  `faq_coments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_faq`
--

INSERT INTO `adm_faq` (`id`, `faq_name`, `faq_email`, `faq_coments`) VALUES
(2, 'sivlu', 'sivlu@gmail.com', 'Online word counters are a perfect tool for anyone who needs to keep a count of their words and characters, but doesn’t use Microsoft Word. Imagine writing a piece and having to manually count the '),
(4, 'Saifur Rahman Saif', 'saifurnstuiit223344@gmail.com', 'Online word counters are a perfect tool for anyone who needs to keep a count of their words and characters, but doesn’t use Microsoft Word. Imagine writing a piece and having to manually count the ');

-- --------------------------------------------------------

--
-- Table structure for table `adm_newbook`
--

CREATE TABLE `adm_newbook` (
  `id` int(11) NOT NULL,
  `book_title` varchar(30) NOT NULL,
  `book_author` varchar(1000) NOT NULL,
  `book_edition` varchar(4) NOT NULL,
  `book_price` varchar(8) NOT NULL,
  `book_stock` int(20) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `book_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_newbook`
--

INSERT INTO `adm_newbook` (`id`, `book_title`, `book_author`, `book_edition`, `book_price`, `book_stock`, `short_desc`, `description`, `status`, `book_img`) VALUES
(12, 'Data Structures Using C', 'Thomas', '4th', '1200', 12, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1614964426_208090463.png'),
(13, 'OOP with C', 'Thomas', '3rd', '1500', 12, 'passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1614964327_954123226.png'),
(15, 'Introduction to Algorithm', 'Holman', '3rd', '2200', 11, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1616302028_422712698.png'),
(16, 'Design Patterns', 'Holman', '5th', '1290', 20, 'many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1623172385_801057349.png'),
(19, 'Design Patterns', 'Holman', '5th', '1290', 20, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1623209983_93668900.png'),
(20, 'Design Patterns', 'Erich Gamma', '5th', '1290', 20, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1623210179_446461604.png'),
(21, 'Design Patterns', 'Erich Gamma', '5th', '1290', 20, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1623210312_402698639.png'),
(22, 'Design Patterns', 'Erich Gamma', '7th', '1290', 20, 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1623210694_610899637.png'),
(23, 'Introduction to Algorithm', 'Holman', '3rd', '2200', 11, 'many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1616302028_422712698.png'),
(24, 'Design Patterns', 'Erich Gamma', '7th', '1290', 20, 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1623210694_610899637.png'),
(25, 'Introduction to Algorithm', 'Holman', '3rd', '2200', 11, 'many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1616302028_422712698.png'),
(26, 'Data Structures Using C', 'Thomas', '4th', '1200', 12, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1614964426_208090463.png'),
(27, 'Introduction to Algorithm', 'Holman', '3rd', '2200', 11, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1616302028_422712698.png'),
(28, 'Design Patterns', 'Holman', '5th', '1290', 20, 'many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '7', 'user_1623172385_801057349.png'),
(29, 'Design Patterns', 'Holman', '5th', '1290', 20, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1623209983_93668900.png'),
(30, 'Design Patterns', 'Erich Gamma', '5th', '1290', 20, '', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '1', 'user_1623210179_446461604.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_pen_reqbook`
--

CREATE TABLE `adm_pen_reqbook` (
  `id` int(11) NOT NULL,
  `req_title` varchar(200) NOT NULL,
  `req_author` varchar(400) NOT NULL,
  `req_edition` varchar(4) NOT NULL,
  `req_quantity` int(4) NOT NULL,
  `req_phone` varchar(11) NOT NULL,
  `req_address` varchar(400) NOT NULL,
  `status` int(2) NOT NULL,
  `req_bookimg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_pen_reqbook`
--

INSERT INTO `adm_pen_reqbook` (`id`, `req_title`, `req_author`, `req_edition`, `req_quantity`, `req_phone`, `req_address`, `status`, `req_bookimg`) VALUES
(2, 'Introduction to Algorithm', 'Thomas H. Cormen', '4th', 3, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623296548_922352543.png'),
(3, 'C Programming language ', 'Thomas H. Cormen', '5th', 3, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623297584_119659305.png'),
(4, 'C Programming language ', 'Thomas H. Cormen', '5th', 3, '01309080748', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623297584_119659305.png'),
(10, 'Web Technology', 'Saifur', '3rd', 3, '01838082983', 'Laskminarayonpur, mijdee court, Noakhali', 1, 'user_1623333451_148290311.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_role`
--

CREATE TABLE `adm_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_role`
--

INSERT INTO `adm_role` (`role_id`, `role_name`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'author'),
(4, 'editor'),
(5, 'subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `adm_sechandbook`
--

CREATE TABLE `adm_sechandbook` (
  `secbook_id` int(11) NOT NULL,
  `secbook_title` varchar(50) NOT NULL,
  `secbook_author` varchar(150) NOT NULL,
  `secbook_edition` varchar(4) NOT NULL,
  `secbook_price` varchar(10) NOT NULL,
  `seller_num` varchar(11) NOT NULL,
  `secbook_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_sechandbook`
--

INSERT INTO `adm_sechandbook` (`secbook_id`, `secbook_title`, `secbook_author`, `secbook_edition`, `secbook_price`, `seller_num`, `secbook_img`) VALUES
(1, 'Design Patterns', 'Thomas', '5th', '1290', '11243656787', 'user_1623212418_146854890.png'),
(3, 'Discrete Mathematics', 'E. Balagurusamy', '3rd', '1200', '01838082983', 'user_1614951700_62837167.png'),
(4, 'Game Programming in C++', 'Holman', '1st', '1500', '01838082983', 'user_1614951854_403662923.png'),
(5, 'Design Patterns', 'Erich Gamma', '6th', '1290', '11243656787', 'user_1623212418_146854890.png'),
(27, 'Object Oriented Programming with C++', 'Holman', '4th', '1200', '01838082983', 'user_1615561453_749688286.png'),
(28, 'Design Patterns', 'Erich Gamma', '5th', '1290', '11243656787', 'user_1623215110_32301336.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_selloldbook`
--

CREATE TABLE `adm_selloldbook` (
  `secbook_id` int(11) NOT NULL,
  `secbook_title` varchar(100) NOT NULL,
  `secbook_author` varchar(150) NOT NULL,
  `secbook_edition` varchar(4) NOT NULL,
  `secbook_price` varchar(10) NOT NULL,
  `seller_num` varchar(11) NOT NULL,
  `secbook_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_selloldbook`
--

INSERT INTO `adm_selloldbook` (`secbook_id`, `secbook_title`, `secbook_author`, `secbook_edition`, `secbook_price`, `seller_num`, `secbook_img`) VALUES
(1, 'Design Patterns', 'Thomas', '6th', '1290', '11243656787', 'user_1623212418_146854890.png'),
(5, 'Design Patterns', 'Thomas', '6th', '1290', '11243656787', 'user_1623212418_146854890.png'),
(6, 'Introduction to Algorithm', 'Holman', '1st', '1200', '01838082983', 'user_1625936832_74688876.png'),
(7, 'Introduction to Algorithm', 'Erich gamma ', '3rd', '1500', '01838082983', 'user_1625936922_823572525.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_subscribers`
--

CREATE TABLE `adm_subscribers` (
  `subscriber_id` int(20) NOT NULL,
  `subscriber_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_subscribers`
--

INSERT INTO `adm_subscribers` (`subscriber_id`, `subscriber_email`) VALUES
(1, 'saifurnstuiit223344@gmail.com '),
(2, 'saif@gmail.com'),
(3, 'sivlu@gmail.com'),
(4, 'reja18@gmail.com'),
(6, 'akram@gmail.com'),
(7, 'akram2233@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `adm_testimonil`
--

CREATE TABLE `adm_testimonil` (
  `testo_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_title` varchar(20) NOT NULL,
  `client_review` varchar(135) NOT NULL,
  `client_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_testimonil`
--

INSERT INTO `adm_testimonil` (`testo_id`, `client_name`, `client_title`, `client_review`, `client_img`) VALUES
(2, 'Lisa McClanahan', 'CSE Student', 'But also the leap into electronic type reman see essentially unchanged. It was popul arised thew with the release of letraset sheets.', 'user_1614886295_781357547.png'),
(3, 'Smith', 'CSE Student', 'But also the leap into electronic type reman see essentially unchanged. It was popul arised thew with the release of letraset sheets.', 'user_1614886717_990100739.png'),
(4, 'Fazle Rabbi', 'BSSE Student', 'But also the leap into electronic type reman see essentially unchanged. It was popul arised thew with the release of letraset sheets.', 'user_1614886717_990100739.png'),
(5, 'Rahat Uddin Azad', 'BSSE Student', 'But also the leap into electronic type reman see essentially unchanged. It was popul arised thew with the release of letraset sheets.', 'user_1614886717_990100739.png');

-- --------------------------------------------------------

--
-- Table structure for table `adm_user`
--

CREATE TABLE `adm_user` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_username` varchar(20) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_pic` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_user`
--

INSERT INTO `adm_user` (`user_id`, `user_name`, `user_phone`, `user_email`, `user_username`, `user_password`, `user_pic`, `role_id`) VALUES
(3, 'Saif', '01309080748', 'saif@gmail.com', 'saif', '81dc9bdb52d04dc20036dbd8313ed055', 'user_1614749959_595605522.png', 1),
(4, 'Saifur Rahman Saif', '01309080748', 'saifurnstuiit223344@gmail.com', 'saifur', '81dc9bdb52d04dc20036dbd8313ed055', 'user_1615018260_216332182.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_books`
--

CREATE TABLE `all_books` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` varchar(11) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `status` int(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_books`
--

INSERT INTO `all_books` (`id`, `categories_id`, `title`, `author`, `price`, `edition`, `quantity`, `short_desc`, `description`, `status`, `image`) VALUES
(1, 1, 'Algorithm', 'afddf', '1230', '3th', 12, 'adffdjhhjh m', 'asdffbgfb', 1, '1.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'New_Books ', 1),
(2, 'Old_books', 1),
(3, 'Donate_books', 1),
(4, 'Best_sell_books', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(1, 1, 0, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 9999, 8499, 10, '799153645_303b4a46-a701-4b43-b9c1-d98a2b53422f.jpg', 'Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque quis nisi porta congue. Aenean sed maximus ligula. Vestibulum quis eros id ex condimentum lacinia. Nam interdum finibus odio, sit amet commodo erat varius sed. In at velit velit. Nullam vitae gravida mi. Donec aliquet nunc non ipsum bibendum, et elementum nibh lobortis. Fusce tempor elit at mauris luctus euismod. Donec eu massa eros. Aenean maximus vitae nisl ut sollicitudin. Aenean urna arcu, laoreet at ante eget, maximus mattis lacus. Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 1, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', '', 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 0, 1),
(2, 1, 0, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 165800, 155800, 4, '942626953_iphone.jpg', 'Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 'Curabitur eget augue dolor. Curabitur id dapibus massa. Vestibulum at enim quis metus ultrices posuere vitae sit amet eros. Morbi et libero pellentesque, efficitur odio nec, congue lorem. Vestibulum faucibus, risus eget pretium efficitur, neque nulla eleifend purus, non venenatis lorem ligula vel nulla. Fusce finibus efficitur sapien vitae laoreet. Integer imperdiet justo sed tellus dictum, at egestas arcu finibus. Fusce et augue elit. Praesent tincidunt purus in purus dictum volutpat. Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 0, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', '', 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 0, 1),
(3, 1, 0, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 115900, 115900, 5, '567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 'Nullam a nunc et lorem ornare faucibus. Etiam tortor lacus, auctor eget enim at, tincidunt dignissim magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin tincidunt eros eget felis tempor, id volutpat ipsum lacinia. Donec scelerisque risus non purus scelerisque tristique. Mauris enim ligula, condimentum sed iaculis nec, porttitor eu nunc. Sed hendrerit vel arcu vitae iaculis. Phasellus vehicula molestie leo. Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 0, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 0, 1),
(4, 2, 2, 'SHEEN-SOLID TROUSER-OLIVE', 1999, 1200, 3, '697347005_2__1538219531_49.204.69.38_600x.jpg', 'per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 'Duis a felis congue, feugiat est non, suscipit quam. In elit lacus, auctor sed lacus eget, egestas consectetur leo. Duis pellentesque pharetra ante, ac ornare nibh faucibus id. Integer pulvinar malesuada nisl. Nulla vel orci nunc. Nullam a tellus eu ex ullamcorper mollis. Donec commodo ligula a accumsan fermentum. Mauris sed orci lacinia, posuere leo molestie, pretium mi. Cras sodales, neque id cursus fermentum, mi purus vehicula sem, vel laoreet lorem justo id tortor. Sed ut urna ut ipsum vestibulum commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 0, 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 0, 1),
(5, 2, 0, 'NATURE-LINEN SHIRT-GREEN', 2799, 2399, 8, '812581380_nature_green-0224_600x.jpg', 'a nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'NATURE-LINEN SHIRT-GREEN', 'NATURE-LINEN SHIRT-GREEN', 'T-Shirt, NATURE-LINEN SHIRT-GREEN', 0, 1),
(6, 2, 1, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 1999, 1500, 10, '931830512__8-(1)-E5x-104831-NJD.jpg', 'lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 'Duis in risus quis lectus dictum fringilla. Aenean tempor pellentesque velit id ullamcorper. Ut id aliquam odio. Morbi id pharetra libero, ut tempor nisi. Maecenas a lectus nec risus maximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex dictum nisl bibendum elementum non in turpis. In bibendum ipsum nunc, bibendum lacinia lacus maximus eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus aliquam lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 0, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 0, 1),
(7, 4, 0, 'Floral Print Polo T-shirt', 1900, 1350, 7, '309027777_Floral-Print-Polo-T-shirt.jpg', 'isl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 0, 1),
(8, 4, 0, 'Floral Embroidered Polo T-shirt', 1120, 1900, 10, '651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'rius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 'Vestibulum in auctor turpis. Quisque hendrerit eget turpis et molestie. Phasellus nec nibh a lacus rhoncus eleifend. Donec suscipit id diam non mattis. Fusce eu luctus leo. Etiam eget dui libero. Etiam eros lorem, rhoncus et convallis eget, tempus vel tellus. Nam at diam quis nisl tincidunt aliquam. Quisque placerat magna non libero interdum varius vel id risus. Vivamus mollis maximus fermentum. Donec eget nulla dui. Sed ultricies malesuada metus, non feugiat purus fringilla ac. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer accumsan, tortor id eleifend varius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 1, 'Floral Embroidered Polo T-shirt', '', 'Floral Embroidered Polo T-shirt', 0, 1),
(9, 4, 0, 'Floral Print Polo T-shirt Latest', 650, 1560, 10, '526258680_Floral-Print-Polo-T-shirt1.jpg', 's mus. Vestibulum eget posuere orci, eu ultrices sapien. Orc', 'aximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex d', 1, 'Floral Print Polo T-shirt Latest', '', 'Floral Print Polo T-shirt Latest', 0, 1),
(10, 4, 3, 'test', 100, 10, 1, '977077907_651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'test', 'test', 0, '', '', '', 0, 1),
(11, 2, 0, 'Test1', 100, 50, 10, '457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'Test', 'test', 0, '', '', '', 0, 1),
(12, 2, 1, 'Test Man', 120, 100, 10, '332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'Test desc', 'Test desc', 0, '', '', '', 2, 1),
(13, 1, 0, 'My Mobile', 200, 150, 10, '991997612_567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'Test desc', 'Test desc', 1, '', '', '', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_active_reqbook`
--
ALTER TABLE `adm_active_reqbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_banner`
--
ALTER TABLE `adm_banner`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `adm_bestsellbook`
--
ALTER TABLE `adm_bestsellbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_billing_info`
--
ALTER TABLE `adm_billing_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_contact`
--
ALTER TABLE `adm_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_donatebook`
--
ALTER TABLE `adm_donatebook`
  ADD PRIMARY KEY (`donate_id`);

--
-- Indexes for table `adm_donate_book_request`
--
ALTER TABLE `adm_donate_book_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_earnmoney_order_accept`
--
ALTER TABLE `adm_earnmoney_order_accept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_event`
--
ALTER TABLE `adm_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `adm_faq`
--
ALTER TABLE `adm_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_newbook`
--
ALTER TABLE `adm_newbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_pen_reqbook`
--
ALTER TABLE `adm_pen_reqbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_role`
--
ALTER TABLE `adm_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `adm_sechandbook`
--
ALTER TABLE `adm_sechandbook`
  ADD PRIMARY KEY (`secbook_id`);

--
-- Indexes for table `adm_selloldbook`
--
ALTER TABLE `adm_selloldbook`
  ADD PRIMARY KEY (`secbook_id`);

--
-- Indexes for table `adm_subscribers`
--
ALTER TABLE `adm_subscribers`
  ADD PRIMARY KEY (`subscriber_id`);

--
-- Indexes for table `adm_testimonil`
--
ALTER TABLE `adm_testimonil`
  ADD PRIMARY KEY (`testo_id`);

--
-- Indexes for table `adm_user`
--
ALTER TABLE `adm_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `all_books`
--
ALTER TABLE `all_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_active_reqbook`
--
ALTER TABLE `adm_active_reqbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adm_banner`
--
ALTER TABLE `adm_banner`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adm_bestsellbook`
--
ALTER TABLE `adm_bestsellbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adm_billing_info`
--
ALTER TABLE `adm_billing_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adm_contact`
--
ALTER TABLE `adm_contact`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `adm_donatebook`
--
ALTER TABLE `adm_donatebook`
  MODIFY `donate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adm_donate_book_request`
--
ALTER TABLE `adm_donate_book_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adm_earnmoney_order_accept`
--
ALTER TABLE `adm_earnmoney_order_accept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adm_event`
--
ALTER TABLE `adm_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adm_faq`
--
ALTER TABLE `adm_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adm_newbook`
--
ALTER TABLE `adm_newbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `adm_pen_reqbook`
--
ALTER TABLE `adm_pen_reqbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adm_role`
--
ALTER TABLE `adm_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adm_sechandbook`
--
ALTER TABLE `adm_sechandbook`
  MODIFY `secbook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `adm_selloldbook`
--
ALTER TABLE `adm_selloldbook`
  MODIFY `secbook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `adm_subscribers`
--
ALTER TABLE `adm_subscribers`
  MODIFY `subscriber_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `adm_testimonil`
--
ALTER TABLE `adm_testimonil`
  MODIFY `testo_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adm_user`
--
ALTER TABLE `adm_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `all_books`
--
ALTER TABLE `all_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
