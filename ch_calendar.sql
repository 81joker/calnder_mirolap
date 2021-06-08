-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2021 at 05:58 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ch_calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `kalender`
--

CREATE TABLE `kalender` (
  `id` int(11) NOT NULL,
  `description` varchar(222) NOT NULL,
  `erinnerung` varchar(222) NOT NULL,
  `datum` varchar(50) DEFAULT NULL,
  `dattag` varchar(50) DEFAULT NULL,
  `datyear` varchar(50) DEFAULT NULL,
  `fulldate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kalender`
--

INSERT INTO `kalender` (`id`, `description`, `erinnerung`, `datum`, `dattag`, `datyear`, `fulldate`) VALUES
(50, 'Termin Ahmed', '1.tag', NULL, '\'\'', '\'\'', NULL),
(85, '', 'Choose...', NULL, '\'\'', '\'\'', NULL),
(87, 'sss', '1.Tag', NULL, '\'\'', '\'\'', NULL),
(91, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(93, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(94, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(95, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(96, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(97, 'Nice', '1 Tag', '02', '01', '2002', '2002-02-01'),
(99, 'Nice app', '1 Woche', '08', '06', '2004', '2004-08-06'),
(131, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(134, 'Hello World', '2 Tag', '01', '15', '1994', '1994-01-15'),
(135, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(136, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(137, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(138, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(139, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(140, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(141, 'Hello World', '1 Tag', '03', '01', '1994', '1994-03-01'),
(142, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(143, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(144, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(145, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(146, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(147, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(148, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(149, 'k[o', '2 Tag', '02', '01', '1994', '1994-02-01'),
(150, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(151, 'yr6yry', '2 Tag', '02', '01', '1994', '1994-02-01'),
(155, 'something', '2 Tag', '02', '01', '1994', '1994-02-01'),
(156, 'Hello World', 'Choose...', '04', '01', '13', '2013-04-01'),
(157, 'Hello World', '1 Tag', '04', '01', '13', '2013-04-01'),
(158, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(159, 'Hello World', '2 Tag', '04', '01', '13', '2013-04-01'),
(160, 'Hello World', '2 Woche', '02', '01', '1994', '1994-02-01'),
(161, 'Hello World', '2 Woche', '02', '01', '1994', '1994-02-01'),
(162, 'Hello World', '2 Woche', '02', '01', '1994', '1994-02-01'),
(163, 'Hello World', '2 Woche', '02', '01', '1994', '1994-02-01'),
(164, 'Hello World', '2 Woche', '02', '01', '1994', '1994-02-01'),
(165, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(166, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(167, 'newtext', '3 Tag', '02', '01', '1994', '1994-02-01'),
(168, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(169, 'last', '2 Tag', '02', '01', '1994', '1994-02-01'),
(170, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(171, '8y7', '3 Tag', '02', '01', '1994', '1994-02-01'),
(172, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(173, 'Hello world', '3 Tag', '02', '01', '1994', '1994-02-01'),
(174, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(175, 'something', '2 Tag', '02', '01', '1994', '1994-02-01'),
(176, 'hello world', '3 Tag', '02', '01', '1994', '1994-02-01'),
(177, 'sad', '2 Tag', '06', '01', '1994', '1994-06-01'),
(178, 'something', '3 Tag', '02', '01', '1994', '1994-02-01'),
(179, 'Hello World', '2 Tag', '04', '01', '1994', '1994-04-01'),
(205, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(206, 'Hello World', '1 Woche', '02', '01', '1994', '1994-02-01'),
(208, 'something', '3 Tag', '02', '01', '1994', '1994-02-01'),
(209, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(210, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(211, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(215, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(216, 'something', '1 Tag', '02', '01', '1994', '1994-02-01'),
(217, 'ok', '2 Tag', '02', '01', '1994', '1994-02-01'),
(218, 'Hello World', '1 Woche', '04', '01', '1994', '1994-04-01'),
(219, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(220, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(222, 'something', '2 Tag', '04', '01', '13', '2013-04-01'),
(223, 'Hello World', '2 Tag', '04', '15', '1994', '1994-04-15'),
(224, 'something', '1 Tag', '02', '15', '1994', '1994-02-15'),
(225, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(226, 'fa', '2 Woche', '02', '01', '1994', '1994-02-01'),
(227, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(228, 'Hello World', '2 Tag', '02', '15', '1994', '1994-02-15'),
(229, 'new', '2 Tag', '03', '02', '1994', '1994-03-02'),
(230, 'Hello World', '2 Tag', '02', '01', '13', '2013-02-01'),
(231, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(232, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(233, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(234, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(235, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(236, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(237, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(238, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(239, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(240, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(241, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(242, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(243, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(244, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(245, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(246, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(247, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(248, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(249, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(250, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(251, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(252, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(253, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(254, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(255, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(256, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(257, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(258, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(259, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(260, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(261, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(262, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(263, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(264, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(265, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(266, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(267, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(268, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(269, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(270, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(271, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(272, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(273, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(274, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(275, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(276, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(277, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(278, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(279, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(280, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(281, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(282, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(283, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(284, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(285, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(286, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(287, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(288, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(289, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(290, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(291, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(292, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(293, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(294, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(295, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(296, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(297, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(298, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(299, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(300, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(301, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(302, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(303, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(304, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(305, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(306, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(307, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(308, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(309, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(310, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(311, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(312, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(313, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(314, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(315, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(316, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(317, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(318, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(319, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(320, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(321, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(322, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(323, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(324, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(325, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(326, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(327, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(328, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(329, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(330, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(331, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(332, 'Hello World', 'Choose...', '02', '01', '1994', '1994-02-01'),
(333, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(334, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(335, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(336, 'Hello Worldddasdadasdasda', '1 Woche', '02', '01', '1994', '1994-02-01'),
(337, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(338, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(339, 'Hello World1', '2 Tag', '02', '01', '1994', '1994-02-01'),
(340, 'something', '3 Tag', '02', '01', '1994', '1994-02-01'),
(341, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(342, 'No it not sendet', '2 Tag', '04', '01', '1994', '1994-04-01'),
(343, 'a7a', '2 Tag', '02', '01', '1994', '1994-02-01'),
(344, 'Hello World1', '1 Tag', '02', '01', '1994', '1994-02-01'),
(345, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(346, 'Hello World', '1 Woche', '02', '01', '1994', '1994-02-01'),
(347, 'Hello World', '1 Tag', '02', '01', '1994', '1994-02-01'),
(348, 'Hello World', '2 Tag', '03', '01', '1994', '1994-03-01'),
(349, 'Hello World', '1 Woche', '02', '01', '1994', '1994-02-01'),
(350, 'sasaddadsaaaaads', '2 Woche', '03', '01', '1994', '1994-03-01'),
(351, 'Hello World', '3 Tag', '02', '01', '1994', '1994-02-01'),
(352, 'hello world', '2 Tag', '02', '01', '1994', '1994-02-01'),
(353, 'Hello World', '2 Tag', '03', '01', '1994', '1994-03-01'),
(354, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(355, 'Hello World1', '2 Tag', '12', '01', '1994', '1994-12-01'),
(356, 'bsm allh', '2 Woche', '03', '01', '1994', '1994-03-01'),
(357, 'bsm allh', '1 Woche', '04', '02', '1994', '1994-04-02'),
(358, 'the logical option', '1 Woche', '04', '01', '1994', '1994-04-01'),
(359, 'PythonKing', '2 Tag', '12', '02', '2021', '2021-12-02'),
(360, 'Python King', '1 Woche', '04', '01', '1994', '1994-04-01'),
(361, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(362, 'Hello World1', '2 Tag', '02', '01', '1994', '1994-02-01'),
(363, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(364, 'bsm allh', '1 Woche', '02', '15', '1994', '1994-02-15'),
(365, 'Hello World', '2 Tag', '02', '01', '1994', '1994-02-01'),
(366, 'Python King', '1 Woche', '02', '15', '1994', '1994-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `text`, `img`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sagittis lacus varius egestas luctus. Maecenas at gravida metus. Donec eros erat, euismod non arcu at, auctor laoreet libero. Proin nec gravida dolor. Curabitur eu suscipit diam, at tempor est. Vivamus vehicula felis ut mi tincidunt, eget luctus arcu fermentum. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero turpis, aliquet et nisi ut, varius pulvinar magna. Etiam a consectetur ante. Nulla facilisi. Nam rutrum cursus sagittis. Pellentesque sed erat vitae justo iaculis suscipit at id enim. Duis quam nisl, pulvinar vel eros viverra, tincidunt vulputate nunc. In dapibus aliquam augue, sed porta urna laoreet consectetur. Donec scelerisque mi eget odio cursus, at sodales est fermentum.', 'https://placeimg.com/300/200');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `last_login` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `last_login`) VALUES
(1, 'Nehad', 'nehad@gmail.com', '123456', '2021-06-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kalender`
--
ALTER TABLE `kalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kalender`
--
ALTER TABLE `kalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
