-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2014 at 10:55 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app_surveys`
--
CREATE DATABASE IF NOT EXISTS `app_surveys` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `app_surveys`;

-- --------------------------------------------------------

--
-- Table structure for table `answered_propositions`
--

CREATE TABLE IF NOT EXISTS `answered_propositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participation_id` int(11) NOT NULL,
  `proposition_id` int(11) NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_answered_propositions_propositions1_idx` (`proposition_id`),
  KEY `fk_answered_propositions_participation_idx` (`participation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `answered_propositions`
--

INSERT INTO `answered_propositions` (`id`, `participation_id`, `proposition_id`, `body`, `value`, `created_at`, `updated_at`) VALUES
(1, 70, 114, NULL, NULL, '2013-04-09 15:48:29', '2013-04-09 15:48:29'),
(2, 73, 116, 'volutpat. Nulla facilisis. Suspendisse', NULL, '2013-04-09 00:23:33', '2013-04-09 00:23:33'),
(3, 88, 113, 'nisl elementum purus, accumsan', NULL, '2013-04-07 06:14:39', '2013-04-07 06:14:39'),
(4, 28, 86, NULL, NULL, '2013-03-12 15:30:55', '2013-03-12 15:30:55'),
(5, 54, 66, 'Aliquam tincidunt, nunc ac', NULL, '2013-03-09 03:11:12', '2013-03-09 03:11:12'),
(6, 85, 66, 'Nullam scelerisque neque sed', NULL, '2013-03-11 03:11:12', '2013-03-11 03:11:12'),
(7, 28, 10, 'pellentesque massa lobortis ultrices.', NULL, '2013-03-14 15:30:55', '2013-03-14 15:30:55'),
(8, 28, 9, 'tellus', 5, '2013-03-14 15:30:55', '2013-03-14 15:30:55'),
(9, 94, 65, 'mauris eu elit.', 1, '2013-02-08 22:16:18', '2013-02-08 22:16:18'),
(10, 94, 109, 'vulputate eu, odio.', 2, '2013-02-08 22:16:18', '2013-02-08 22:16:18'),
(11, 94, 110, 'tempus', 3, '2013-02-08 22:16:18', '2013-02-08 22:16:18'),
(12, 94, 111, 'qwerqffsd', 4, '2013-02-08 22:16:18', '2013-02-08 22:16:18'),
(13, 94, 112, 'diam', 5, '2013-02-08 22:16:18', '2013-02-08 22:16:18'),
(14, 45, 35, 'sdfgsdg s', 1, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(15, 45, 51, NULL, 2, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(16, 45, 41, NULL, 3, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(17, 45, 89, NULL, 4, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(18, 45, 82, NULL, 5, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(19, 45, 100, 'te asdfgadfa', 6, '2013-03-20 11:36:07', '2013-03-20 11:36:07'),
(20, 16, 113, 'qadfga dd', NULL, '2013-05-10 07:05:58', '2013-05-10 07:05:58'),
(21, 25, 115, NULL, NULL, '2013-05-10 07:05:58', '2013-05-10 07:05:58'),
(22, 55, 114, 'sdfhsdf dfg ', NULL, '2013-05-10 10:25:55', '2013-05-10 10:25:55'),
(23, 60, 115, NULL, NULL, '2013-05-10 10:25:55', '2013-05-10 10:25:55'),
(33, 69, 50, NULL, NULL, '2013-05-08 12:44:31', '2013-05-08 12:44:31'),
(34, 72, 50, NULL, NULL, '2013-05-08 12:44:31', '2013-05-08 12:44:31'),
(35, 61, 27, NULL, NULL, '2013-05-03 13:52:07', '2013-05-03 13:52:07'),
(36, 61, 36, 'qerf qwef q.', NULL, '2013-05-03 13:52:07', '2013-05-03 13:52:07'),
(37, 83, 1, NULL, NULL, '2013-05-09 02:03:10', '2013-05-09 02:03:10'),
(38, 57, 24, 'adg sdg d fadfgsdfgs.', NULL, '2013-05-05 15:32:25', '2013-05-05 15:32:25'),
(39, 57, 101, NULL, NULL, '2013-05-05 15:32:25', '2013-05-05 15:32:25'),
(40, 87, 13, 'sdfg sdfg', NULL, '2013-05-06 04:41:47', '2013-05-06 04:41:47'),
(41, 2, 20, NULL, 2, '2013-05-08 19:37:30', '2013-05-08 19:37:30'),
(42, 2, 70, NULL, 6, '2013-05-08 19:37:30', '2013-05-08 19:37:30'),
(43, 8, 20, NULL, 4, '2013-05-08 19:37:30', '2013-05-08 19:37:30'),
(44, 8, 70, NULL, 10, '2013-05-08 19:37:30', '2013-05-08 19:37:30'),
(45, 69, 34, NULL, 7, '2013-05-08 12:44:31', '2013-05-08 12:44:31'),
(46, 76, 34, NULL, 9, '2013-05-08 12:44:31', '2013-05-08 12:44:31'),
(47, 9, 9, NULL, 5, '2013-05-05 11:29:57', '2013-05-05 11:29:57'),
(48, 44, 9, NULL, 9, '2013-05-05 11:29:57', '2013-05-05 11:29:57'),
(49, 61, 29, NULL, 5, '2013-05-02 14:52:07', '2013-05-02 14:52:07'),
(50, 82, 37, NULL, 10, '2013-05-08 21:06:58', '2013-05-08 21:06:58'),
(51, 82, 49, NULL, 12, '2013-05-08 21:06:58', '2013-05-08 21:06:58'),
(52, 82, 68, NULL, 18, '2013-05-08 21:06:58', '2013-05-08 21:06:58'),
(53, 7, 53, NULL, 1, '2013-05-19 02:51:44', '2013-05-19 02:51:44'),
(54, 7, 85, NULL, 2, '2013-05-19 02:51:44', '2013-05-19 02:51:44'),
(55, 7, 55, NULL, 3, '2013-05-19 02:51:44', '2013-05-19 02:51:44'),
(56, 17, 35, 'sdfgsdfg sfg.', 1, '2013-05-08 14:59:06', '2013-05-08 14:59:06'),
(57, 17, 51, NULL, 2, '2013-05-08 14:59:06', '2013-05-08 14:59:06'),
(58, 17, 41, NULL, 3, '2013-05-08 14:59:06', '2013-05-08 14:59:06'),
(59, 17, 85, NULL, 4, '2013-05-08 14:59:06', '2013-05-08 14:59:06'),
(60, 17, 89, NULL, 5, '2013-05-08 14:59:06', '2013-05-08 14:59:06'),
(61, 17, 100, 'asd fasdfa sdfa ,xfgb.', 6, '2013-05-08 14:59:06', '2013-05-08 14:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `participations`
--

CREATE TABLE IF NOT EXISTS `participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taking_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `participant_token` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concrete_class` int(11) DEFAULT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_participations_takings1_idx` (`taking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `participations`
--

INSERT INTO `participations` (`id`, `type`, `taking_id`, `person_id`, `participant_token`, `person_type`, `concrete_class`, `section`) VALUES
(1, 'AnonymousParticipation', 32, NULL, '31E36933-F931-4F06-DDEB-7E074998F037', NULL, NULL, NULL),
(2, 'AnonymousParticipation', 7, NULL, '84C3C7D1-C912-11BA-EF41-F0D2DB8C0749', NULL, NULL, NULL),
(3, 'AnonymousParticipation', 50, NULL, 'F2171D4C-4000-0BE9-E4DA-20CE002508DE', NULL, NULL, NULL),
(4, 'AnonymousParticipation', 2, NULL, 'CBC50EA9-101C-BEEF-B738-6B3B3886B9DD', NULL, NULL, NULL),
(5, 'AnonymousParticipation', 16, NULL, 'EDF41A4A-E664-6B93-F52A-214A40707E18', NULL, NULL, NULL),
(6, 'AnonymousParticipation', 45, NULL, 'D31AC120-7254-19AA-A848-429374F5FCE3', NULL, NULL, NULL),
(7, 'AnonymousParticipation', 88, NULL, 'A0D88BAE-D722-71D0-3A87-A576307907AA', NULL, NULL, NULL),
(8, 'AnonymousParticipation', 7, NULL, '4CFEBA0B-1A0E-88B9-CE59-A0A8D5FFA1AF', NULL, NULL, NULL),
(9, 'AnonymousParticipation', 15, NULL, 'A5296981-EC69-3EE7-9A3F-B48CE8C080F7', NULL, NULL, NULL),
(10, 'AnonymousParticipation', 32, NULL, '40814F56-BDE0-296F-AEA2-34F2EBDC1AC1', NULL, NULL, NULL),
(11, 'AnonymousParticipation', 80, NULL, '752ED0D2-0DA2-6099-F06A-DA647A7BFFBA', NULL, NULL, NULL),
(12, 'AnonymousParticipation', 66, NULL, '5CC35B5B-83C7-3655-9A20-199486AA530C', NULL, NULL, NULL),
(13, 'AnonymousParticipation', 81, NULL, '10AC6959-0F62-B537-42DE-D2FE2EB7FEFB', NULL, NULL, NULL),
(14, 'AnonymousParticipation', 2, NULL, '788939D4-3CDC-7468-3BA2-62C0DF74B5CF', NULL, NULL, NULL),
(15, 'AnonymousParticipation', 28, NULL, 'F957571B-C3E7-2328-88B0-936D055E35DF', NULL, NULL, NULL),
(16, 'AnonymousParticipation', 53, NULL, '9A9C7097-4E6F-1E96-30FF-21F835B06D7F', NULL, NULL, NULL),
(17, 'AnonymousParticipation', 85, NULL, '7A8E60E2-3C3B-EB80-7CA9-BD1848BA5222', NULL, NULL, NULL),
(18, 'AnonymousParticipation', 50, NULL, 'FDA5A8D8-DE9B-699D-8562-06436E2AC343', NULL, NULL, NULL),
(19, 'AnonymousParticipation', 39, NULL, 'EA3C959A-5047-C3F8-BAC4-2706648583E0', NULL, NULL, NULL),
(20, 'AnonymousParticipation', 84, NULL, '0A95BAC2-ECA3-2253-6904-D94312644252', NULL, NULL, NULL),
(21, 'AnonymousParticipation', 66, NULL, '68EEECDF-3F64-F50C-0219-531F0E414CC1', NULL, NULL, NULL),
(22, 'AnonymousParticipation', 11, NULL, '2C5EC654-2DE4-049C-9699-469F29EF9EC4', NULL, NULL, NULL),
(23, 'AnonymousParticipation', 1, NULL, 'B5EFCB1D-F053-D074-2812-89599FF7EF72', NULL, NULL, NULL),
(24, 'AnonymousParticipation', 88, NULL, '85F86F9E-C930-EC3F-43E1-2F8EAB67CFC5', NULL, NULL, NULL),
(25, 'AnonymousParticipation', 53, NULL, '85C385EB-0D24-A2FE-EBA7-7BFA2B9284EB', NULL, NULL, NULL),
(26, 'AnonymousParticipation', 39, NULL, '1CE3AABB-6EA6-425A-2A40-0BE27A4E3986', NULL, NULL, NULL),
(27, 'AnonymousParticipation', 49, NULL, '3B551944-3DE7-C37A-7409-8FFB97C673FD', NULL, NULL, NULL),
(28, 'AnonymousParticipation', 5, NULL, '9CC77B8C-ABCB-1370-D014-DD8DEC16E373', NULL, NULL, NULL),
(29, 'AnonymousParticipation', 37, NULL, '8A04D2E9-34FC-E1C2-D9D7-DF25864FD653', NULL, NULL, NULL),
(30, 'AnonymousParticipation', 81, NULL, '73CEFB04-DA1F-9593-0D8A-4CCE29A7537B', NULL, NULL, NULL),
(31, 'AnonymousParticipation', 40, NULL, '1FCC44FD-8AE7-23DF-AAF1-447B6AB55FD4', NULL, NULL, NULL),
(32, 'AnonymousParticipation', 3, NULL, 'D1F98474-19ED-43D5-BDBA-A6A127A8F3C8', NULL, NULL, NULL),
(33, 'AnonymousParticipation', 81, NULL, '56AC7ADF-4286-2A60-A3BE-F488E77D855C', NULL, NULL, NULL),
(34, 'AnonymousParticipation', 84, NULL, '02191204-E25C-C4BB-2853-74D86F520D61', NULL, NULL, NULL),
(35, 'AnonymousParticipation', 78, NULL, '94DB09E4-34CA-8FB3-D3CA-4235BF3E4559', NULL, NULL, NULL),
(36, 'AnonymousParticipation', 41, NULL, '0AF5DC4A-2349-69D7-1799-81948B94FCCE', NULL, NULL, NULL),
(37, 'AnonymousParticipation', 37, NULL, '983CC91E-B8B4-BED1-D8EF-F0338CA6481E', NULL, NULL, NULL),
(38, 'AnonymousParticipation', 49, NULL, '3A50B1CE-B27C-CD4E-15FC-5289A4B6C4F8', NULL, NULL, NULL),
(39, 'AnonymousParticipation', 35, NULL, '129F87D3-AFEF-06C2-5DED-E0A7C4972FB3', NULL, NULL, NULL),
(40, 'AnonymousParticipation', 93, NULL, '3A8A0D6D-7710-B7B5-C3F0-FE767FF0DA44', NULL, NULL, NULL),
(41, 'AnonymousParticipation', 78, NULL, '087F7F15-8C75-2B6C-8438-76D51FCED71F', NULL, NULL, NULL),
(42, 'AnonymousParticipation', 98, NULL, 'AFD34D1E-DEAA-582E-D49C-AD5437DACE64', NULL, NULL, NULL),
(43, 'AnonymousParticipation', 81, NULL, '9DD0DFE0-69BE-1EB9-A0A8-D45F62D5F413', NULL, NULL, NULL),
(44, 'AnonymousParticipation', 15, NULL, '9564212E-6659-8501-0FCD-B09053898DC8', NULL, NULL, NULL),
(45, 'AnonymousParticipation', 47, NULL, 'F34A1DF8-3FA3-348A-A57B-A2A042EB8028', NULL, NULL, NULL),
(46, 'AnonymousParticipation', 30, NULL, 'A9B3C85B-1742-CDCC-5A11-16CDE1F1E86C', NULL, NULL, NULL),
(47, 'AnonymousParticipation', 50, NULL, '2CD2ED87-92B5-DA29-B74B-A71EA12FCBA0', NULL, NULL, NULL),
(48, 'AnonymousParticipation', 15, NULL, '4C45797A-2826-088C-7A12-B06FC0D48385', NULL, NULL, NULL),
(49, 'AnonymousParticipation', 81, NULL, 'AB266FE2-C326-476D-B5F0-23E47923DFD3', NULL, NULL, NULL),
(50, 'AnonymousParticipation', 58, NULL, '6C397C67-6CBA-52E8-B0C0-76F6E2F9E8A6', NULL, NULL, NULL),
(51, 'KnownParticipation', 97, 8050, NULL, '', 1243, 'es'),
(52, 'KnownParticipation', 82, 5087, NULL, '', 1243, 'es'),
(53, 'KnownParticipation', 10, 8358, NULL, 'Collaborators', 1243, ''),
(54, 'KnownParticipation', 9, 2740, NULL, 'Collaborators', 0, ''),
(55, 'KnownParticipation', 59, 1380, NULL, 'Students', 1243, 'essc'),
(56, 'KnownParticipation', 86, 9885, NULL, '', 1243, 'es'),
(57, 'KnownParticipation', 24, 1421, NULL, 'Collaborators', 0, ''),
(58, 'KnownParticipation', 33, 6775, NULL, 'Collaborators', 0, 'es'),
(59, 'KnownParticipation', 59, 5920, NULL, 'Collaborators', 0, 'esy'),
(60, 'KnownParticipation', 59, 8288, NULL, '', 1277, 'essc'),
(61, 'KnownParticipation', 8, 9207, NULL, 'Collaborators', 1244, 'essc'),
(62, 'KnownParticipation', 14, 9856, NULL, '', 1244, ''),
(63, 'KnownParticipation', 68, 8820, NULL, '', 1244, ''),
(64, 'KnownParticipation', 36, 6396, NULL, 'Collaborators', 0, 'essc'),
(65, 'KnownParticipation', 33, 7935, NULL, '', 1243, 'esy'),
(66, 'KnownParticipation', 59, 9058, NULL, '', 1277, 'essc'),
(67, 'KnownParticipation', 10, 2171, NULL, 'Students', 1244, 'essc'),
(68, 'KnownParticipation', 97, 2417, NULL, '', 0, 'es'),
(69, 'KnownParticipation', 29, 7687, NULL, 'Collaborators', 1243, 'es'),
(70, 'KnownParticipation', 25, 8998, NULL, 'Students', 1277, ''),
(71, 'KnownParticipation', 12, 7603, NULL, 'Students', 1244, 'essc'),
(72, 'KnownParticipation', 29, 6342, NULL, 'Students', 0, ''),
(73, 'KnownParticipation', 25, 5724, NULL, 'Students', 0, ''),
(74, 'KnownParticipation', 74, 5936, NULL, 'Students', 0, 'es'),
(75, 'KnownParticipation', 57, 1097, NULL, '', 0, 'es'),
(76, 'KnownParticipation', 29, 4435, NULL, '', 0, 'es'),
(77, 'KnownParticipation', 21, 1981, NULL, 'Students', 0, 'esy'),
(78, 'KnownParticipation', 86, 2242, NULL, '', 1243, ''),
(79, 'KnownParticipation', 96, 2949, NULL, '', 1277, 'essc'),
(80, 'KnownParticipation', 68, 9761, NULL, '', 1277, ''),
(81, 'KnownParticipation', 65, 8856, NULL, 'Collaborators', 1244, 'esy'),
(82, 'KnownParticipation', 43, 9586, NULL, '', 0, 'es'),
(83, 'KnownParticipation', 90, 9692, NULL, '', 1277, 'esy'),
(84, 'KnownParticipation', 65, 7252, NULL, '', 1244, 'es'),
(85, 'KnownParticipation', 9, 7201, NULL, '', 0, 'es'),
(86, 'KnownParticipation', 38, 2141, NULL, 'Students', 0, ''),
(87, 'KnownParticipation', 69, 2443, NULL, 'Students', 0, ''),
(88, 'KnownParticipation', 25, 4413, NULL, '', 0, 'essc'),
(89, 'KnownParticipation', 65, 9560, NULL, 'Students', 0, 'essc'),
(90, 'KnownParticipation', 70, 2121, NULL, 'Students', 1243, ''),
(91, 'KnownParticipation', 72, 2884, NULL, 'Students', 1243, ''),
(92, 'KnownParticipation', 95, 8946, NULL, 'Students', 0, 'esy'),
(93, 'KnownParticipation', 95, 2815, NULL, '', 1244, ''),
(94, 'KnownParticipation', 63, 5650, NULL, 'Collaborators', 1277, 'es'),
(95, 'KnownParticipation', 59, 3283, NULL, 'Collaborators', 0, ''),
(96, 'KnownParticipation', 21, 1295, NULL, '', 1243, ''),
(97, 'KnownParticipation', 82, 7692, NULL, 'Students', 0, ''),
(98, 'KnownParticipation', 38, 9373, NULL, 'Collaborators', 1243, 'esy'),
(99, 'KnownParticipation', 61, 6354, NULL, 'Collaborators', 0, ''),
(100, 'KnownParticipation', 73, 4141, NULL, 'Collaborators', 1244, '');

-- --------------------------------------------------------

--
-- Table structure for table `propositions`
--

CREATE TABLE IF NOT EXISTS `propositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer_format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trigger_action` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trigger_target_id` int(11) DEFAULT NULL,
  `trigger_target_type` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propositions_questions1_idx` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=117 ;

--
-- Dumping data for table `propositions`
--

INSERT INTO `propositions` (`id`, `type`, `question_id`, `position`, `title`, `answer_format`, `trigger_action`, `trigger_target_id`, `trigger_target_type`) VALUES
(1, 'ClosedProposition', 67, 1, 'aptent taciti sociosqu ad litora torquent per', NULL, NULL, NULL, NULL),
(2, 'ClosedProposition', 77, 2, 'iaculis enim, sit amet ornare', NULL, NULL, NULL, NULL),
(3, 'ClosedProposition', 94, 3, 'egestas, urna justo faucibus', NULL, NULL, NULL, NULL),
(4, 'ClosedProposition', 71, 4, 'Morbi accumsan laoreet', NULL, NULL, NULL, NULL),
(5, 'OpenedProposition', 67, 5, 'pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', NULL, NULL, NULL, NULL),
(6, 'ClosedProposition', 91, 6, 'ullamcorper, nisl arcu', NULL, NULL, NULL, NULL),
(7, 'OpenedProposition', 43, 7, 'Quisque varius. Nam porttitor scelerisque neque.', NULL, NULL, NULL, NULL),
(8, 'ClosedProposition', 82, 8, 'luctus lobortis. Class aptent', NULL, NULL, NULL, NULL),
(9, 'OpenedProposition', 31, 9, 'accumsan laoreet ipsum. Curabitur consequat, lectus sit amet', NULL, NULL, NULL, NULL),
(10, 'OpenedProposition', 62, 10, 'sagittis augue, eu tempor erat neque non', NULL, NULL, NULL, NULL),
(11, 'OpenedProposition', 57, 11, 'Fusce aliquam, enim nec tempus', NULL, NULL, NULL, NULL),
(12, 'ClosedProposition', 37, 12, 'pede, ultrices a, auctor non, feugiat nec,', NULL, NULL, NULL, NULL),
(13, 'OpenedProposition', 95, 13, 'cursus non, egestas a, dui.', NULL, NULL, NULL, NULL),
(14, 'OpenedProposition', 8, 14, 'montes, nascetur ridiculus mus. Donec dignissim magna a', NULL, NULL, NULL, NULL),
(15, 'ClosedProposition', 36, 15, 'arcu. Vestibulum ante ipsum primis in faucibus orci', NULL, NULL, NULL, NULL),
(16, 'ClosedProposition', 74, 16, 'tempor augue ac ipsum. Phasellus vitae mauris sit', NULL, NULL, NULL, NULL),
(17, 'ClosedProposition', 5, 17, 'elit elit', NULL, NULL, NULL, NULL),
(18, 'ClosedProposition', 41, 18, 'tortor nibh sit amet orci.', NULL, NULL, NULL, NULL),
(19, 'OpenedProposition', 69, 19, 'purus. Duis elementum, dui', NULL, NULL, NULL, NULL),
(20, 'ClosedProposition', 13, 20, 'ornare. In faucibus. Morbi', NULL, NULL, NULL, NULL),
(21, 'ClosedProposition', 39, 21, 'libero lacus,', NULL, NULL, NULL, NULL),
(22, 'OpenedProposition', 96, 22, 'venenatis vel, faucibus', NULL, NULL, NULL, NULL),
(23, 'OpenedProposition', 96, 23, 'elit sed consequat auctor, nunc', NULL, NULL, NULL, NULL),
(24, 'OpenedProposition', 86, 24, 'elit fermentum risus, at fringilla purus', NULL, NULL, NULL, NULL),
(25, 'OpenedProposition', 48, 25, 'amet, consectetuer adipiscing elit. Aliquam', NULL, NULL, NULL, NULL),
(26, 'OpenedProposition', 89, 26, 'dictum mi, ac', NULL, NULL, NULL, NULL),
(27, 'ClosedProposition', 38, 27, 'massa lobortis ultrices. Vivamus rhoncus. Donec', NULL, NULL, NULL, NULL),
(28, 'OpenedProposition', 58, 28, 'eget nisi dictum', NULL, NULL, NULL, NULL),
(29, 'ClosedProposition', 33, 29, 'malesuada vel, convallis', NULL, NULL, NULL, NULL),
(30, 'OpenedProposition', 51, 30, 'et magnis dis parturient montes, nascetur ridiculus', NULL, NULL, NULL, NULL),
(31, 'ClosedProposition', 51, 31, 'pede, nonummy ut,', NULL, NULL, NULL, NULL),
(32, 'ClosedProposition', 41, 32, 'volutpat ornare, facilisis eget, ipsum. Donec', NULL, NULL, NULL, NULL),
(33, 'ClosedProposition', 24, 33, 'dui. Fusce aliquam,', NULL, NULL, NULL, NULL),
(34, 'OpenedProposition', 16, 34, 'nec urna suscipit nonummy. Fusce fermentum', NULL, NULL, NULL, NULL),
(35, 'OpenedProposition', 44, 35, 'mollis vitae, posuere at,', NULL, NULL, NULL, NULL),
(36, 'OpenedProposition', 38, 36, 'Etiam ligula', NULL, NULL, NULL, NULL),
(37, 'ClosedProposition', 93, 37, 'nascetur ridiculus mus. Proin', NULL, NULL, NULL, NULL),
(38, 'ClosedProposition', 39, 38, 'eu odio tristique pharetra. Quisque ac libero', NULL, NULL, NULL, NULL),
(39, 'ClosedProposition', 84, 39, 'Aliquam gravida mauris ut mi. Duis risus', NULL, NULL, NULL, NULL),
(40, 'OpenedProposition', 49, 40, 'adipiscing elit. Curabitur', NULL, NULL, NULL, NULL),
(41, 'ClosedProposition', 44, 41, 'turpis egestas. Fusce aliquet', NULL, NULL, NULL, NULL),
(42, 'ClosedProposition', 51, 42, 'diam. Proin dolor. Nulla semper tellus', NULL, NULL, NULL, NULL),
(43, 'OpenedProposition', 58, 43, 'vel quam dignissim pharetra.', NULL, NULL, NULL, NULL),
(44, 'OpenedProposition', 92, 44, 'eros. Proin ultrices. Duis volutpat nunc sit amet', NULL, NULL, NULL, NULL),
(45, 'OpenedProposition', 36, 45, 'sed turpis nec mauris', NULL, NULL, NULL, NULL),
(46, 'OpenedProposition', 88, 46, 'nunc sed pede. Cum sociis', NULL, NULL, NULL, NULL),
(47, 'OpenedProposition', 20, 47, 'tortor. Nunc', NULL, NULL, NULL, NULL),
(48, 'OpenedProposition', 63, 48, 'vitae, orci. Phasellus dapibus quam', NULL, NULL, NULL, NULL),
(49, 'ClosedProposition', 93, 49, 'purus. Maecenas libero est, congue a, aliquet vel,', NULL, NULL, NULL, NULL),
(50, 'ClosedProposition', 9, 50, 'volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing', NULL, NULL, NULL, NULL),
(51, 'ClosedProposition', 44, 51, 'egestas a, dui. Cras pellentesque. Sed', NULL, NULL, NULL, NULL),
(52, 'ClosedProposition', 88, 52, 'Vestibulum ante ipsum primis in', NULL, NULL, NULL, NULL),
(53, 'ClosedProposition', 14, 53, 'Curae; Donec', NULL, NULL, NULL, NULL),
(54, 'OpenedProposition', 25, 54, 'aliquet, metus urna convallis erat,', NULL, NULL, NULL, NULL),
(55, 'ClosedProposition', 14, 55, 'lorem semper', NULL, NULL, NULL, NULL),
(56, 'OpenedProposition', 28, 56, 'scelerisque, lorem ipsum sodales purus, in molestie tortor', NULL, NULL, NULL, NULL),
(57, 'ClosedProposition', 77, 57, 'facilisis non, bibendum', NULL, NULL, NULL, NULL),
(58, 'ClosedProposition', 73, 58, 'vitae sodales nisi magna sed dui. Fusce aliquam,', NULL, NULL, NULL, NULL),
(59, 'OpenedProposition', 52, 59, 'Suspendisse sagittis. Nullam vitae diam. Proin', NULL, NULL, NULL, NULL),
(60, 'OpenedProposition', 85, 60, 'eros. Nam consequat dolor vitae dolor. Donec fringilla.', NULL, NULL, NULL, NULL),
(61, 'OpenedProposition', 7, 61, 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.', NULL, NULL, NULL, NULL),
(62, 'OpenedProposition', 46, 62, 'nonummy ultricies ornare, elit elit fermentum', NULL, NULL, NULL, NULL),
(63, 'OpenedProposition', 7, 63, 'tellus sem mollis dui, in sodales elit', NULL, NULL, NULL, NULL),
(64, 'ClosedProposition', 79, 64, 'ac mattis velit justo nec', NULL, NULL, NULL, NULL),
(65, 'OpenedProposition', 10, 65, 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu.', NULL, NULL, NULL, NULL),
(66, 'OpenedProposition', 50, 66, 'id, blandit', NULL, NULL, NULL, NULL),
(67, 'ClosedProposition', 22, 67, 'ornare egestas ligula. Nullam feugiat placerat', NULL, NULL, NULL, NULL),
(68, 'OpenedProposition', 93, 68, 'Ut nec urna', NULL, NULL, NULL, NULL),
(69, 'OpenedProposition', 100, 69, 'velit eu sem. Pellentesque ut ipsum', NULL, NULL, NULL, NULL),
(70, 'ClosedProposition', 13, 70, 'dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', NULL, NULL, NULL, NULL),
(71, 'ClosedProposition', 73, 71, 'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', NULL, NULL, NULL, NULL),
(72, 'ClosedProposition', 58, 72, 'et nunc. Quisque ornare tortor', NULL, NULL, NULL, NULL),
(73, 'OpenedProposition', 60, 73, 'non nisi. Aenean eget', NULL, NULL, NULL, NULL),
(74, 'ClosedProposition', 77, 74, 'mauris. Morbi non sapien', NULL, NULL, NULL, NULL),
(75, 'OpenedProposition', 4, 75, 'senectus et netus et malesuada fames ac', NULL, NULL, NULL, NULL),
(76, 'ClosedProposition', 51, 76, 'taciti sociosqu ad litora torquent per', NULL, NULL, NULL, NULL),
(77, 'ClosedProposition', 30, 77, 'purus. Nullam', NULL, NULL, NULL, NULL),
(78, 'OpenedProposition', 60, 78, 'ut, nulla. Cras eu tellus eu', NULL, NULL, NULL, NULL),
(79, 'ClosedProposition', 18, 79, 'vitae, posuere at,', NULL, NULL, NULL, NULL),
(80, 'ClosedProposition', 56, 80, 'sem egestas blandit. Nam', NULL, NULL, NULL, NULL),
(81, 'ClosedProposition', 45, 81, 'nisi. Aenean eget metus. In', NULL, NULL, NULL, NULL),
(82, 'ClosedProposition', 44, 82, 'lorem vitae odio sagittis semper. Nam tempor diam', NULL, NULL, NULL, NULL),
(83, 'ClosedProposition', 71, 83, 'a, enim. Suspendisse aliquet, sem', NULL, NULL, NULL, NULL),
(84, 'OpenedProposition', 58, 84, 'Sed eget lacus.', NULL, NULL, NULL, NULL),
(85, 'ClosedProposition', 14, 85, 'pellentesque massa', NULL, NULL, NULL, NULL),
(86, 'ClosedProposition', 11, 86, 'justo. Praesent luctus. Curabitur egestas nunc', NULL, NULL, NULL, NULL),
(87, 'ClosedProposition', 24, 87, 'primis in faucibus orci luctus et ultrices posuere', NULL, NULL, NULL, NULL),
(88, 'OpenedProposition', 72, 88, 'ligula tortor, dictum eu,', NULL, NULL, NULL, NULL),
(89, 'ClosedProposition', 44, 89, 'sapien, cursus in, hendrerit consectetuer, cursus et, magna.', NULL, NULL, NULL, NULL),
(90, 'OpenedProposition', 59, 90, 'nec, eleifend', NULL, NULL, NULL, NULL),
(91, 'ClosedProposition', 88, 91, 'ullamcorper. Duis', NULL, NULL, NULL, NULL),
(92, 'ClosedProposition', 64, 92, 'volutpat. Nulla dignissim. Maecenas ornare egestas', NULL, NULL, NULL, NULL),
(93, 'OpenedProposition', 29, 93, 'amet lorem semper', NULL, NULL, NULL, NULL),
(94, 'ClosedProposition', 96, 94, 'Nunc ut', NULL, NULL, NULL, NULL),
(95, 'ClosedProposition', 40, 95, 'aliquet odio. Etiam', NULL, NULL, NULL, NULL),
(96, 'ClosedProposition', 12, 96, 'lectus, a sollicitudin orci sem eget', NULL, NULL, NULL, NULL),
(97, 'OpenedProposition', 51, 97, 'Curabitur ut odio', NULL, NULL, NULL, NULL),
(98, 'ClosedProposition', 51, 98, 'nec metus facilisis lorem tristique aliquet.', NULL, NULL, NULL, NULL),
(99, 'ClosedProposition', 90, 99, 'Pellentesque habitant morbi tristique senectus et netus et', NULL, NULL, NULL, NULL),
(100, 'OpenedProposition', 44, 100, 'eget ipsum. Suspendisse', NULL, NULL, NULL, NULL),
(101, 'ClosedProposition', 86, 100, 'interdum ligula eu enim. Etiam', NULL, NULL, NULL, NULL),
(102, 'OpenedProposition', 86, 101, 'semper cursus. Integer', NULL, NULL, NULL, NULL),
(103, 'OpenedProposition', 86, 102, 'pretium aliquet, metus urna', NULL, NULL, NULL, NULL),
(104, 'ClosedProposition', 86, 103, 'mollis. Phasellus libero mauris, aliquam eu, accumsan', NULL, NULL, NULL, NULL),
(105, 'OpenedProposition', 66, 104, 'sapien. Aenean massa. Integer vitae nibh. Donec', NULL, NULL, NULL, NULL),
(106, 'OpenedProposition', 66, 105, 'sed leo. Cras vehicula', NULL, NULL, NULL, NULL),
(107, 'OpenedProposition', 66, 106, 'mi fringilla mi lacinia mattis. Integer', NULL, NULL, NULL, NULL),
(108, 'ClosedProposition', 66, 107, 'et, rutrum non, hendrerit id, ante.', NULL, NULL, NULL, NULL),
(109, 'OpenedProposition', 10, 108, 'sed turpis nec mauris', NULL, NULL, NULL, NULL),
(110, 'OpenedProposition', 10, 109, 'auctor vitae, aliquet nec, imperdiet', NULL, NULL, NULL, NULL),
(111, 'OpenedProposition', 10, 110, 'nisi. Cum sociis', NULL, NULL, NULL, NULL),
(112, 'OpenedProposition', 10, 111, 'amet ante. Vivamus non', NULL, NULL, NULL, NULL),
(113, 'OpenedProposition', 3, 112, 'non, feugiat nec, diam. Duis', NULL, NULL, NULL, NULL),
(114, 'OpenedProposition', 3, 113, 'Integer mollis.', NULL, NULL, NULL, NULL),
(115, 'ClosedProposition', 3, 114, 'vel pede blandit congue.', NULL, NULL, NULL, NULL),
(116, 'OpenedProposition', 3, 115, 'nunc est, mollis non,', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_group_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `settings` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questions_question_groups1_idx` (`question_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `type`, `question_group_id`, `title`, `position`, `settings`) VALUES
(1, 'UniqueChoiceQuestion', 62, 'faucibus leo, in', 1, '[]'),
(2, 'RankingQuestion', 62, 'magna. Lorem', 2, '[]'),
(3, 'UniqueChoiceQuestion', 83, 'ipsum. Curabitur consequat, lectus sit amet', 3, '[]'),
(4, 'RankingQuestion', 41, 'malesuada fringilla est. Mauris', 4, '[]'),
(5, 'RangeQuestion', 73, 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', 5, '{"min":"4","max":"13","step":"2"}'),
(6, 'RankingQuestion', 80, 'sem. Pellentesque ut', 6, '[]'),
(7, 'UniqueChoiceQuestion', 86, 'lobortis quam a felis', 7, '[]'),
(8, 'UniqueChoiceQuestion', 56, 'convallis ligula. Donec luctus aliquet', 8, '[]'),
(9, 'MultipleChoiceQuestion', 22, 'arcu. Sed et libero. Proin', 9, '{"min":"5","max":"15"}'),
(10, 'RankingQuestion', 81, 'mauris, aliquam eu,', 10, '[]'),
(11, 'UniqueChoiceQuestion', 37, 'lectus convallis est, vitae sodales nisi', 11, '[]'),
(12, 'RangeQuestion', 41, 'Nullam ut nisi a odio semper', 12, '{"min":"2","max":"18","step":"2"}'),
(13, 'RangeQuestion', 74, 'Praesent luctus.', 13, '{"min":"2","max":"10","step":"2"}'),
(14, 'RankingQuestion', 38, 'Etiam ligula tortor, dictum eu, placerat eget,', 14, '[]'),
(15, 'UniqueChoiceQuestion', 25, 'Etiam gravida molestie arcu. Sed', 15, '[]'),
(16, 'RangeQuestion', 22, 'ligula. Aliquam erat', 16, '{"min":"5","max":"9","step":"2"}'),
(17, 'UniqueChoiceQuestion', 95, 'interdum ligula eu enim. Etiam', 17, '[]'),
(18, 'RankingQuestion', 43, 'nibh vulputate mauris sagittis placerat.', 18, '[]'),
(19, 'RangeQuestion', 60, 'senectus et netus et malesuada fames', 19, '{"min":"2","max":"15","step":"2"}'),
(20, 'RankingQuestion', 21, 'velit eget laoreet posuere,', 20, '[]'),
(21, 'MultipleChoiceQuestion', 81, 'arcu. Curabitur', 21, '{"min":"5","max":"13"}'),
(22, 'UniqueChoiceQuestion', 52, 'est tempor bibendum. Donec', 22, '[]'),
(23, 'RangeQuestion', 12, 'orci, adipiscing non, luctus', 23, '{"min":"4","max":"18","step":"2"}'),
(24, 'UniqueChoiceQuestion', 52, 'Maecenas iaculis aliquet diam.', 24, '[]'),
(25, 'UniqueChoiceQuestion', 62, 'primis in faucibus orci luctus et', 25, '[]'),
(26, 'RankingQuestion', 17, 'risus, at fringilla', 26, '[]'),
(27, 'RankingQuestion', 66, 'orci tincidunt', 27, '[]'),
(28, 'RankingQuestion', 27, 'metus. Vivamus euismod', 28, '[]'),
(29, 'RankingQuestion', 70, 'senectus et netus et', 29, '[]'),
(30, 'RangeQuestion', 45, 'lectus quis massa. Mauris vestibulum,', 30, '{"min":"1","max":"18","step":"2"}'),
(31, 'RangeQuestion', 37, 'vulputate ullamcorper magna. Sed', 31, '{"min":"3","max":"16","step":"2"}'),
(32, 'RangeQuestion', 87, 'felis ullamcorper viverra. Maecenas iaculis aliquet', 32, '{"min":"2","max":"13","step":"2"}'),
(33, 'RangeQuestion', 61, 'dolor, tempus non, lacinia at, iaculis quis,', 33, '{"min":"5","max":"6","step":"2"}'),
(34, 'RangeQuestion', 87, 'lorem, sit amet ultricies sem magna', 34, '{"min":"4","max":"14","step":"2"}'),
(35, 'RangeQuestion', 29, 'purus. Duis elementum, dui quis', 35, '{"min":"5","max":"18","step":"2"}'),
(36, 'RangeQuestion', 62, 'tellus. Nunc lectus pede, ultrices a, auctor', 36, '{"min":"4","max":"7","step":"2"}'),
(37, 'RangeQuestion', 25, 'ipsum ac mi', 37, '{"min":"1","max":"20","step":"2"}'),
(38, 'MultipleChoiceQuestion', 61, 'penatibus et magnis', 38, '{"min":"3","max":"14"}'),
(39, 'RankingQuestion', 28, 'ultricies sem', 39, '[]'),
(40, 'UniqueChoiceQuestion', 53, 'odio. Aliquam vulputate ullamcorper', 40, '[]'),
(41, 'UniqueChoiceQuestion', 12, 'consectetuer adipiscing elit. Etiam laoreet, libero', 41, '[]'),
(42, 'UniqueChoiceQuestion', 59, 'nisi. Aenean eget metus. In', 42, '[]'),
(43, 'RangeQuestion', 24, 'vel quam dignissim pharetra.', 43, '{"min":"4","max":"20","step":"2"}'),
(44, 'RankingQuestion', 60, 'pharetra. Quisque ac libero nec ligula consectetuer', 44, '[]'),
(45, 'RangeQuestion', 20, 'nulla. Integer urna.', 45, '{"min":"4","max":"10","step":"2"}'),
(46, 'RankingQuestion', 49, 'luctus et ultrices posuere cubilia', 46, '[]'),
(47, 'MultipleChoiceQuestion', 22, 'a, malesuada id,', 47, '{"min":"3","max":"6"}'),
(48, 'RangeQuestion', 80, 'Phasellus in felis. Nulla', 48, '{"min":"1","max":"16","step":"2"}'),
(49, 'RankingQuestion', 49, 'iaculis enim, sit amet ornare lectus', 49, '[]'),
(50, 'UniqueChoiceQuestion', 72, 'primis in faucibus orci luctus et ultrices', 50, '[]'),
(51, 'RankingQuestion', 89, 'arcu et pede. Nunc sed orci lobortis', 51, '[]'),
(52, 'RangeQuestion', 44, 'dolor vitae dolor. Donec', 52, '{"min":"1","max":"10","step":"2"}'),
(53, 'UniqueChoiceQuestion', 39, 'sed pede. Cum sociis natoque penatibus', 53, '[]'),
(54, 'MultipleChoiceQuestion', 80, 'lorem, sit', 54, '{"min":"3","max":"10"}'),
(55, 'MultipleChoiceQuestion', 78, 'ac urna. Ut tincidunt vehicula risus. Nulla', 55, '{"min":"1","max":"6"}'),
(56, 'MultipleChoiceQuestion', 25, 'parturient montes, nascetur ridiculus mus.', 56, '{"min":"2","max":"20"}'),
(57, 'MultipleChoiceQuestion', 26, 'a neque. Nullam ut nisi a odio', 57, '{"min":"4","max":"9"}'),
(58, 'RangeQuestion', 65, 'sit amet, risus. Donec nibh', 58, '{"min":"5","max":"13","step":"2"}'),
(59, 'UniqueChoiceQuestion', 17, 'ridiculus mus. Aenean eget magna. Suspendisse tristique', 59, '[]'),
(60, 'RangeQuestion', 58, 'nec, leo. Morbi neque tellus, imperdiet', 60, '{"min":"1","max":"8","step":"2"}'),
(61, 'MultipleChoiceQuestion', 83, 'at arcu.', 61, '{"min":"5","max":"20"}'),
(62, 'UniqueChoiceQuestion', 37, 'libero. Proin mi. Aliquam gravida mauris', 62, '[]'),
(63, 'MultipleChoiceQuestion', 90, 'velit. Pellentesque ultricies dignissim', 63, '{"min":"1","max":"19"}'),
(64, 'MultipleChoiceQuestion', 25, 'nibh. Aliquam ornare, libero at auctor', 64, '{"min":"4","max":"20"}'),
(65, 'RangeQuestion', 97, 'lectus pede et risus.', 65, '{"min":"5","max":"19","step":"2"}'),
(66, 'MultipleChoiceQuestion', 15, 'mi tempor lorem, eget mollis lectus pede', 66, '{"min":"4","max":"6"}'),
(67, 'MultipleChoiceQuestion', 50, 'lorem vitae odio sagittis', 67, '{"min":"3","max":"17"}'),
(68, 'RankingQuestion', 60, 'vel, faucibus id,', 68, '[]'),
(69, 'MultipleChoiceQuestion', 70, 'Sed nec metus facilisis lorem tristique', 69, '{"min":"4","max":"18"}'),
(70, 'UniqueChoiceQuestion', 51, 'mauris, aliquam', 70, '[]'),
(71, 'UniqueChoiceQuestion', 9, 'a, magna. Lorem', 71, '[]'),
(72, 'MultipleChoiceQuestion', 15, 'sed turpis nec mauris blandit mattis. Cras', 72, '{"min":"3","max":"16"}'),
(73, 'UniqueChoiceQuestion', 80, 'nec, cursus a, enim. Suspendisse aliquet,', 73, '[]'),
(74, 'UniqueChoiceQuestion', 23, 'erat semper rutrum.', 74, '[]'),
(75, 'MultipleChoiceQuestion', 36, 'sagittis felis. Donec tempor, est', 75, '{"min":"5","max":"9"}'),
(76, 'RankingQuestion', 21, 'et, rutrum non, hendrerit id, ante. Nunc', 76, '[]'),
(77, 'RankingQuestion', 29, 'eu eros.', 77, '[]'),
(78, 'RankingQuestion', 21, 'malesuada fames ac turpis', 78, '[]'),
(79, 'RankingQuestion', 62, 'ac nulla. In tincidunt congue', 79, '[]'),
(80, 'UniqueChoiceQuestion', 26, 'velit. Aliquam nisl. Nulla eu', 80, '[]'),
(81, 'RangeQuestion', 74, 'commodo at, libero. Morbi', 81, '{"min":"2","max":"10","step":"2"}'),
(82, 'RangeQuestion', 82, 'Fusce dolor quam, elementum at, egestas a,', 82, '{"min":"3","max":"20","step":"2"}'),
(83, 'RankingQuestion', 20, 'massa. Mauris', 83, '[]'),
(84, 'RankingQuestion', 89, 'a neque.', 84, '[]'),
(85, 'UniqueChoiceQuestion', 73, 'auctor velit. Aliquam nisl. Nulla eu neque', 85, '[]'),
(86, 'MultipleChoiceQuestion', 69, 'nec, malesuada', 86, '{"min":"2","max":"20"}'),
(87, 'MultipleChoiceQuestion', 88, 'est. Nunc ullamcorper,', 87, '{"min":"4","max":"7"}'),
(88, 'UniqueChoiceQuestion', 96, 'eu, euismod ac, fermentum vel,', 88, '[]'),
(89, 'UniqueChoiceQuestion', 46, 'ultricies sem magna', 89, '[]'),
(90, 'RangeQuestion', 21, 'dolor dapibus gravida.', 90, '{"min":"2","max":"16","step":"2"}'),
(91, 'MultipleChoiceQuestion', 27, 'ultricies adipiscing, enim mi tempor lorem, eget', 91, '{"min":"2","max":"12"}'),
(92, 'MultipleChoiceQuestion', 28, 'commodo ipsum. Suspendisse non leo. Vivamus nibh', 92, '{"min":"5","max":"19"}'),
(93, 'RangeQuestion', 3, 'parturient montes, nascetur', 93, '{"min":"2","max":"20","step":"2"}'),
(94, 'UniqueChoiceQuestion', 44, 'interdum feugiat. Sed nec metus facilisis', 94, '[]'),
(95, 'MultipleChoiceQuestion', 95, 'facilisi. Sed neque. Sed eget lacus.', 95, '{"min":"4","max":"7"}'),
(96, 'MultipleChoiceQuestion', 5, 'fermentum vel,', 96, '{"min":"1","max":"18"}'),
(97, 'RangeQuestion', 75, 'enim mi', 97, '{"min":"4","max":"14","step":"2"}'),
(98, 'MultipleChoiceQuestion', 4, 'lacus. Aliquam rutrum lorem ac risus. Morbi', 98, '{"min":"3","max":"7"}'),
(99, 'UniqueChoiceQuestion', 2, 'egestas. Aliquam fringilla cursus purus. Nullam', 99, '[]'),
(100, 'RangeQuestion', 100, 'mauris id sapien. Cras dolor', 100, '{"min":"1","max":"18","step":"2"}');

-- --------------------------------------------------------

--
-- Table structure for table `question_groups`
--

CREATE TABLE IF NOT EXISTS `question_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_question_groups_surveys_idx` (`survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `question_groups`
--

INSERT INTO `question_groups` (`id`, `survey_id`, `title`, `position`) VALUES
(1, 50, 'dui, semper et, lacinia vitae, sodales at,', 1),
(2, 61, 'neque', 2),
(3, 88, 'vulputate dui, nec tempus mauris', 3),
(4, 52, 'amet, faucibus ut, nulla. Cras eu tellus', 4),
(5, 64, 'Maecenas', 5),
(6, 88, 'ac libero nec ligula', 6),
(7, 62, 'lectus rutrum urna,', 7),
(8, 46, 'et malesuada fames ac', 8),
(9, 74, 'non quam. Pellentesque habitant morbi', 9),
(10, 6, 'sagittis placerat. Cras dictum ultricies ligula. Nullam', 10),
(11, 56, 'in, cursus et, eros. Proin', 11),
(12, 50, 'quam quis diam. Pellentesque habitant', 12),
(13, 22, 'justo nec ante. Maecenas mi felis,', 13),
(14, 92, 'Donec vitae erat vel pede blandit', 14),
(15, 49, 'mi. Aliquam gravida mauris ut', 15),
(16, 32, 'vel', 16),
(17, 36, 'Cras eget nisi', 17),
(18, 69, 'nostra, per inceptos', 18),
(19, 84, 'laoreet lectus', 19),
(20, 52, 'Nulla', 20),
(21, 36, 'nascetur ridiculus mus.', 21),
(22, 64, 'elit,', 22),
(23, 31, 'Quisque varius.', 23),
(24, 60, 'nonummy ipsum non arcu. Vivamus', 24),
(25, 57, 'sem', 25),
(26, 10, 'arcu. Sed eu', 26),
(27, 91, 'vitae, posuere at,', 27),
(28, 47, 'Ut nec urna et arcu imperdiet ullamcorper.', 28),
(29, 9, 'Quisque ac libero nec ligula consectetuer', 29),
(30, 39, 'orci. Ut semper pretium', 30),
(31, 68, 'tristique ac, eleifend vitae, erat. Vivamus nisi.', 31),
(32, 79, 'aliquet', 32),
(33, 60, 'Quisque libero', 33),
(34, 35, 'erat volutpat. Nulla', 34),
(35, 9, 'In condimentum. Donec', 35),
(36, 33, 'non justo. Proin non massa non', 36),
(37, 22, 'facilisis', 37),
(38, 61, 'vitae aliquam eros turpis non enim. Mauris', 38),
(39, 27, 'Sed nec metus facilisis', 39),
(40, 58, 'Mauris nulla. Integer urna. Vivamus molestie', 40),
(41, 5, 'non magna. Nam ligula elit,', 41),
(42, 13, 'lectus rutrum urna, nec luctus felis', 42),
(43, 50, 'a, malesuada id, erat.', 43),
(44, 47, 'egestas. Duis', 44),
(45, 90, 'eu,', 45),
(46, 45, 'adipiscing elit.', 46),
(47, 94, 'nunc', 47),
(48, 8, 'interdum ligula eu enim. Etiam imperdiet', 48),
(49, 84, 'risus. Nulla', 49),
(50, 44, 'egestas rhoncus. Proin nisl sem, consequat', 50),
(51, 25, 'vulputate, posuere', 51),
(52, 67, 'risus. Nunc ac sem ut', 52),
(53, 57, 'Donec at arcu.', 53),
(54, 21, 'ac, feugiat', 54),
(55, 38, 'rutrum', 55),
(56, 63, 'gravida sit amet, dapibus id,', 56),
(57, 14, 'auctor, nunc nulla vulputate', 57),
(58, 96, 'ante', 58),
(59, 18, 'amet, dapibus id, blandit at, nisi.', 59),
(60, 98, 'interdum ligula', 60),
(61, 92, 'pretium et, rutrum non, hendrerit id,', 61),
(62, 43, 'montes, nascetur ridiculus mus.', 62),
(63, 90, 'lacus. Ut nec urna et arcu imperdiet', 63),
(64, 24, 'eleifend. Cras sed leo. Cras', 64),
(65, 98, 'ac mattis ornare, lectus ante', 65),
(66, 14, 'ac metus vitae velit egestas lacinia. Sed', 66),
(67, 48, 'dui lectus rutrum', 67),
(68, 46, 'rutrum, justo. Praesent luctus.', 68),
(69, 50, 'inceptos hymenaeos. Mauris ut', 69),
(70, 23, 'vitae, orci. Phasellus', 70),
(71, 49, 'semper egestas,', 71),
(72, 96, 'sem. Nulla interdum.', 72),
(73, 16, 'facilisis eget, ipsum. Donec', 73),
(74, 36, 'Morbi metus.', 74),
(75, 74, 'aliquet. Proin velit. Sed malesuada augue', 75),
(76, 73, 'lacinia at, iaculis quis,', 76),
(77, 33, 'cursus et, magna. Praesent', 77),
(78, 13, 'dictum', 78),
(79, 49, 'justo nec ante.', 79),
(80, 99, 'dolor vitae dolor. Donec fringilla. Donec feugiat', 80),
(81, 42, 'vitae mauris sit amet', 81),
(82, 28, 'a nunc. In at pede. Cras vulputate', 82),
(83, 40, 'porttitor scelerisque neque. Nullam', 83),
(84, 100, 'dignissim magna a', 84),
(85, 14, 'Ut semper pretium neque. Morbi quis', 85),
(86, 18, 'dolor.', 86),
(87, 29, 'tempor augue ac ipsum. Phasellus vitae', 87),
(88, 56, 'eu augue', 88),
(89, 13, 'erat', 89),
(90, 15, 'diam vel', 90),
(91, 26, 'adipiscing ligula. Aenean gravida nunc sed pede.', 91),
(92, 49, 'pharetra, felis eget', 92),
(93, 79, 'diam eu dolor', 93),
(94, 60, 'id, erat. Etiam', 94),
(95, 46, 'Proin', 95),
(96, 75, 'tellus justo sit', 96),
(97, 25, 'nulla. In tincidunt congue turpis.', 97),
(98, 22, 'Nullam feugiat placerat velit.', 98),
(99, 69, 'a, scelerisque sed, sapien. Nunc pulvinar arcu', 99),
(100, 30, 'nulla. Integer urna. Vivamus', 100);

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_for_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `title`, `description`, `created_for_id`, `created_by_id`, `created_at`, `updated_by_id`, `updated_at`) VALUES
(1, 'est tempor bibendum. Donec felis', 'iaculis nec, eleifend', 350, 891, '2014-09-01 21:50:01', 980, '2013-04-05 07:09:48'),
(2, 'augue ut lacus. Nulla', 'mus. Donec', 915, 457, '2014-10-18 00:51:27', 628, '2014-10-13 07:42:37'),
(3, 'risus quis diam', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 562, 993, '2014-02-14 01:20:24', 818, '2015-02-24 15:43:47'),
(4, 'molestie pharetra nibh. Aliquam', 'Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 5, 789, '2013-03-31 07:50:51', 799, '2015-01-12 15:22:25'),
(5, 'eget', 'dapibus id, blandit at, nisi. Cum sociis natoque', 568, 768, '2013-06-24 03:48:56', 908, '2014-05-10 14:15:27'),
(6, 'sit amet,', 'est ac mattis semper, dui lectus', 436, 43, '2014-07-31 05:45:53', 85, '2015-03-19 09:41:17'),
(7, 'tortor at', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia', 556, 771, '2013-11-12 05:10:52', 917, '2014-06-02 20:03:53'),
(8, 'vulputate velit eu', 'Duis ac', 271, 176, '2014-12-22 14:02:51', 230, '2015-03-30 02:23:15'),
(9, 'Nulla tempor augue ac ipsum.', 'fames ac turpis', 57, 197, '2013-03-30 15:21:36', 669, '2014-11-18 12:51:09'),
(10, 'nibh. Donec', 'eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', 809, 978, '2014-03-14 20:44:16', 588, '2013-08-24 11:44:41'),
(11, 'ut aliquam iaculis, lacus', 'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet', 394, 492, '2014-12-10 11:39:37', 975, '2013-10-18 11:33:18'),
(12, 'sem ut dolor', 'scelerisque scelerisque dui.', 891, 858, '2015-02-18 12:04:33', 569, '2013-12-16 23:31:37'),
(13, 'non,', 'ac mattis', 150, 772, '2014-01-13 07:43:07', 492, '2013-09-12 05:20:53'),
(14, 'at fringilla purus mauris', 'Pellentesque habitant', 110, 455, '2014-06-15 07:08:41', 837, '2013-10-06 13:42:44'),
(15, 'mollis', 'urna. Nullam lobortis quam a felis ullamcorper', 62, 162, '2014-02-11 08:01:42', 302, '2014-10-22 22:46:33'),
(16, 'metus facilisis lorem', 'et nunc. Quisque ornare tortor at risus. Nunc', 668, 404, '2014-09-19 07:19:04', 257, '2014-12-30 13:55:26'),
(17, 'ante ipsum', 'vehicula et,', 853, 384, '2013-08-05 02:41:08', 329, '2015-04-13 04:00:55'),
(18, 'pede. Cras vulputate velit eu', 'Aliquam rutrum lorem ac', 248, 984, '2014-01-07 13:01:20', 380, '2014-02-16 19:43:03'),
(19, 'nunc risus varius orci, in', 'Curae; Phasellus ornare. Fusce', 126, 395, '2013-08-31 02:02:18', 888, '2013-06-14 05:45:15'),
(20, 'Etiam gravida molestie arcu. Sed', 'dolor elit, pellentesque a, facilisis non, bibendum sed,', 804, 88, '2014-03-18 18:28:32', 879, '2013-10-20 23:19:49'),
(21, 'enim consequat purus. Maecenas', 'egestas. Aliquam', 529, 805, '2015-01-27 01:38:55', 688, '2013-12-07 11:20:11'),
(22, 'convallis, ante lectus convallis est,', 'cursus non, egestas a, dui.', 225, 49, '2014-01-22 13:39:21', 619, '2013-08-14 06:10:27'),
(23, 'Suspendisse non leo. Vivamus', 'odio. Nam interdum enim non nisi. Aenean eget metus.', 768, 157, '2013-07-27 18:51:48', 838, '2013-08-30 21:31:52'),
(24, 'fermentum vel,', 'egestas nunc sed libero. Proin sed turpis nec mauris', 516, 696, '2014-01-22 01:12:18', 4, '2014-12-27 02:50:00'),
(25, 'volutpat nunc sit', 'sapien imperdiet ornare. In faucibus. Morbi vehicula.', 84, 85, '2013-04-24 17:21:12', 862, '2013-10-09 18:04:04'),
(26, 'lobortis quam a felis ullamcorper', 'nec luctus felis purus', 41, 39, '2013-08-28 08:54:06', 345, '2014-06-17 02:40:45'),
(27, 'ipsum', 'nunc id enim. Curabitur massa. Vestibulum accumsan', 272, 961, '2013-05-18 03:42:40', 892, '2014-01-21 19:14:49'),
(28, 'turpis nec', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus', 522, 672, '2013-12-10 06:56:59', 371, '2013-09-12 18:56:56'),
(29, 'dui quis accumsan convallis,', 'lacus. Nulla tincidunt,', 955, 43, '2014-10-01 09:06:09', 839, '2014-08-10 11:13:18'),
(30, 'quis, pede. Suspendisse dui.', 'sem. Nulla interdum. Curabitur dictum. Phasellus', 858, 523, '2013-12-05 13:42:51', 745, '2014-04-17 12:07:04'),
(31, 'nibh sit amet orci.', 'et, lacinia vitae, sodales at, velit.', 906, 822, '2014-02-27 04:45:10', 660, '2013-07-20 11:25:12'),
(32, 'scelerisque,', 'cursus in,', 453, 341, '2015-02-10 16:05:27', 318, '2015-03-11 11:24:03'),
(33, 'Aliquam', 'Sed eget lacus. Mauris non dui nec', 259, 907, '2013-07-09 08:19:48', 154, '2014-07-13 16:35:08'),
(34, 'risus, at', 'dis parturient montes, nascetur ridiculus mus. Proin', 623, 784, '2015-02-18 02:15:27', 113, '2014-09-20 16:07:59'),
(35, 'dui augue eu', 'primis in faucibus orci luctus et ultrices posuere', 647, 31, '2013-03-28 00:57:04', 632, '2014-07-19 10:37:05'),
(36, 'Cum', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', 882, 938, '2014-10-09 03:16:49', 108, '2013-10-22 22:02:25'),
(37, 'nulla. In', 'eget, venenatis a, magna.', 237, 64, '2014-12-08 01:08:13', 170, '2014-10-18 02:09:13'),
(38, 'varius. Nam porttitor scelerisque', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', 118, 648, '2014-12-27 15:16:49', 979, '2015-03-21 17:39:02'),
(39, 'venenatis a, magna.', 'ipsum sodales purus,', 379, 274, '2013-08-03 18:09:15', 755, '2015-01-09 04:19:19'),
(40, 'luctus lobortis. Class aptent taciti', 'velit dui, semper et,', 560, 540, '2014-06-03 23:22:52', 152, '2013-05-05 23:52:22'),
(41, 'Etiam imperdiet dictum magna. Ut', 'malesuada vel, convallis in, cursus et, eros. Proin ultrices.', 380, 558, '2014-10-24 17:49:21', 304, '2013-11-12 09:38:06'),
(42, 'aliquam arcu. Aliquam ultrices', 'posuere cubilia Curae;', 121, 988, '2014-10-01 09:29:41', 88, '2014-08-20 05:37:16'),
(43, 'nibh enim, gravida sit amet,', 'accumsan neque', 652, 872, '2014-05-02 17:42:13', 600, '2014-12-10 04:07:33'),
(44, 'sem elit,', 'enim nec tempus scelerisque,', 30, 537, '2014-09-17 15:27:15', 55, '2013-05-02 10:47:14'),
(45, 'nunc nulla', 'enim. Sed nulla ante, iaculis nec, eleifend', 981, 312, '2015-01-18 13:22:28', 153, '2013-07-11 04:51:55'),
(46, 'penatibus et magnis dis parturient', 'tempor, est ac mattis semper, dui lectus rutrum urna,', 410, 905, '2013-07-12 18:50:33', 390, '2013-12-28 08:10:09'),
(47, 'elit.', 'Fusce feugiat. Lorem ipsum dolor sit', 663, 415, '2013-10-09 23:42:44', 952, '2013-10-11 02:03:58'),
(48, 'nec', 'Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', 585, 895, '2013-07-20 14:24:52', 693, '2014-08-21 14:34:10'),
(49, 'Curabitur', 'tortor nibh sit amet orci. Ut sagittis lobortis mauris.', 986, 797, '2014-08-15 10:13:23', 245, '2014-10-27 10:30:28'),
(50, 'condimentum', 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt', 959, 811, '2013-12-08 02:41:38', 414, '2013-11-06 15:43:46'),
(51, 'sollicitudin a, malesuada', 'diam dictum sapien. Aenean massa. Integer vitae', 44, 592, '2014-01-15 18:08:02', 764, '2013-10-18 20:28:22'),
(52, 'Nunc ac sem ut dolor', 'risus. Morbi metus. Vivamus euismod', 145, 198, '2014-11-04 13:51:26', 357, '2015-03-07 19:31:38'),
(53, 'risus odio, auctor vitae, aliquet', 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio', 523, 272, '2015-01-14 06:49:10', 519, '2013-05-17 14:10:40'),
(54, 'eget magna. Suspendisse', 'arcu. Vestibulum ut eros non enim', 191, 719, '2014-09-11 15:11:16', 552, '2013-07-09 01:08:07'),
(55, 'erat nonummy ultricies ornare,', 'metus. Aenean sed pede nec ante blandit viverra.', 390, 585, '2013-08-01 01:36:18', 446, '2014-07-29 22:42:27'),
(56, 'bibendum ullamcorper. Duis cursus,', 'molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', 903, 959, '2015-02-21 18:39:22', 777, '2014-12-23 09:32:46'),
(57, 'nonummy', 'laoreet posuere, enim nisl elementum purus, accumsan interdum', 90, 169, '2013-04-03 15:41:09', 424, '2015-04-15 06:08:44'),
(58, 'tellus. Nunc lectus pede, ultrices', 'sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', 505, 950, '2014-05-20 09:15:24', 825, '2014-12-17 14:46:38'),
(59, 'sit amet, faucibus ut,', 'molestie tortor nibh sit amet orci.', 93, 437, '2013-06-11 02:39:57', 558, '2013-06-22 05:02:15'),
(60, 'mollis vitae, posuere at, velit.', 'elit. Etiam laoreet,', 713, 471, '2014-05-22 07:08:26', 316, '2013-11-21 06:34:30'),
(61, 'vitae semper egestas,', 'eu tellus. Phasellus elit pede, malesuada vel, venenatis', 44, 964, '2014-04-02 07:26:24', 397, '2014-12-25 20:18:04'),
(62, 'tortor at risus. Nunc', 'gravida sagittis. Duis gravida. Praesent', 950, 294, '2015-01-11 11:16:03', 334, '2015-02-11 05:40:41'),
(63, 'quis lectus. Nullam suscipit,', 'Maecenas iaculis aliquet diam. Sed diam lorem,', 290, 621, '2013-09-10 17:31:47', 418, '2014-07-25 21:18:40'),
(64, 'est', 'Integer eu lacus. Quisque', 787, 429, '2014-01-08 14:35:06', 558, '2014-04-26 02:53:13'),
(65, 'nec mauris blandit', 'iaculis enim, sit', 215, 237, '2013-04-20 05:54:06', 601, '2015-02-23 05:59:42'),
(66, 'ullamcorper', 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc', 964, 749, '2014-12-02 20:59:19', 556, '2014-09-20 16:24:12'),
(67, 'inceptos hymenaeos. Mauris ut', 'nunc est,', 326, 457, '2015-01-02 11:10:50', 23, '2014-05-31 05:08:17'),
(68, 'eleifend vitae, erat. Vivamus', 'orci lacus vestibulum lorem, sit amet ultricies', 71, 399, '2014-04-20 12:05:04', 939, '2014-10-22 08:47:26'),
(69, 'congue a, aliquet vel,', 'quam a felis ullamcorper viverra. Maecenas iaculis aliquet', 395, 841, '2014-12-29 15:29:27', 932, '2013-07-26 21:54:34'),
(70, 'leo.', 'lobortis quam', 99, 222, '2014-06-21 01:00:52', 657, '2014-01-27 01:01:39'),
(71, 'sapien,', 'justo nec ante.', 408, 496, '2013-07-12 13:41:46', 841, '2014-08-27 03:25:23'),
(72, 'dolor, nonummy', 'orci. Phasellus dapibus quam quis', 71, 73, '2015-02-07 02:59:07', 879, '2014-07-09 00:46:46'),
(73, 'In mi pede, nonummy ut,', 'ac mattis velit justo', 6, 698, '2014-07-17 17:27:48', 28, '2013-10-02 11:26:03'),
(74, 'neque.', 'luctus aliquet odio. Etiam ligula tortor, dictum eu,', 706, 542, '2015-01-19 01:50:54', 717, '2013-08-18 06:48:52'),
(75, 'consequat', 'cursus a, enim. Suspendisse', 748, 609, '2013-12-22 04:52:51', 484, '2014-10-15 09:58:30'),
(76, 'nibh vulputate mauris sagittis placerat.', 'nonummy ipsum', 210, 601, '2015-01-03 18:46:56', 612, '2014-11-08 08:04:19'),
(77, 'felis, adipiscing fringilla, porttitor vulputate,', 'mi, ac mattis velit justo nec ante.', 818, 264, '2014-11-05 06:27:44', 1, '2014-12-27 20:05:55'),
(78, 'interdum. Curabitur dictum. Phasellus in', 'Sed pharetra, felis eget varius ultrices, mauris', 178, 569, '2013-09-20 05:14:33', 165, '2013-11-03 22:38:17'),
(79, 'diam luctus lobortis. Class', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', 636, 714, '2014-02-20 12:38:29', 890, '2014-07-04 15:50:45'),
(80, 'egestas hendrerit', 'ullamcorper magna. Sed eu eros.', 231, 292, '2014-04-02 13:12:42', 836, '2013-08-25 09:44:30'),
(81, 'Sed congue, elit', 'est. Mauris eu turpis.', 7, 902, '2013-03-26 00:50:27', 802, '2014-11-20 03:47:56'),
(82, 'porttitor scelerisque', 'ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 585, 975, '2014-02-21 01:43:32', 51, '2013-11-06 14:00:40'),
(83, 'nisl. Nulla eu neque', 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum', 931, 66, '2014-01-27 12:12:27', 81, '2015-02-18 07:26:10'),
(84, 'Phasellus in felis. Nulla tempor', 'molestie tellus. Aenean', 420, 336, '2014-06-14 00:56:07', 47, '2014-08-02 20:20:32'),
(85, 'sapien molestie orci tincidunt', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.', 142, 409, '2013-10-08 18:27:01', 340, '2014-08-16 09:10:12'),
(86, 'sem molestie sodales.', 'Donec tempus,', 175, 624, '2014-05-16 06:10:34', 339, '2014-02-26 01:08:37'),
(87, 'lacus pede sagittis augue, eu', 'libero at auctor ullamcorper, nisl arcu', 91, 601, '2013-08-30 20:42:22', 61, '2014-07-22 02:42:40'),
(88, 'lorem, eget mollis lectus pede', 'vel sapien imperdiet ornare. In faucibus. Morbi vehicula.', 81, 888, '2013-08-15 02:24:53', 531, '2014-09-23 00:23:29'),
(89, 'nascetur ridiculus mus.', 'quis diam luctus lobortis. Class aptent taciti', 451, 729, '2015-01-27 05:44:30', 932, '2013-11-29 06:24:05'),
(90, 'in faucibus orci', 'in consequat enim diam vel arcu. Curabitur ut odio', 134, 543, '2014-10-27 00:29:29', 221, '2013-12-21 06:09:40'),
(91, 'Mauris eu turpis. Nulla', 'Duis a mi fringilla mi lacinia', 25, 968, '2014-02-12 17:53:14', 420, '2014-12-29 10:45:22'),
(92, 'arcu. Vestibulum ut eros non', 'ante. Maecenas mi felis, adipiscing', 85, 65, '2014-12-08 04:07:42', 8, '2015-04-05 01:33:41'),
(93, 'Nullam scelerisque neque', 'viverra. Maecenas iaculis aliquet', 545, 517, '2014-11-24 20:50:21', 129, '2014-09-16 14:55:32'),
(94, 'nulla. Integer urna. Vivamus molestie', 'Nullam velit', 496, 527, '2015-02-18 17:18:38', 254, '2013-06-14 15:19:18'),
(95, 'in lobortis tellus justo sit', 'aliquam adipiscing lacus. Ut nec urna', 740, 803, '2013-11-10 10:44:30', 711, '2014-04-17 23:28:47'),
(96, 'eros nec tellus. Nunc lectus', 'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin', 283, 731, '2014-08-22 14:18:53', 594, '2014-05-30 17:38:14'),
(97, 'feugiat nec,', 'eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum', 358, 560, '2013-05-10 01:38:15', 435, '2013-06-01 08:30:00'),
(98, 'convallis dolor. Quisque', 'Morbi metus. Vivamus euismod urna.', 726, 335, '2013-09-04 04:31:39', 611, '2013-11-22 04:03:06'),
(99, 'urna justo faucibus lectus, a', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 952, 636, '2014-10-16 14:02:14', 230, '2014-01-06 09:30:32'),
(100, 'consectetuer, cursus et, magna.', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,', 25, 184, '2014-06-13 11:31:20', 414, '2014-04-28 16:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `takings`
--

CREATE TABLE IF NOT EXISTS `takings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `state` varchar(31) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_takings_surveys1_idx` (`survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `takings`
--

INSERT INTO `takings` (`id`, `survey_id`, `anonymous`, `state`, `comment`, `starts_at`, `ends_at`) VALUES
(1, 29, 1, 'created', 'ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', '2013-05-06 17:28:01', '2013-05-15 11:57:51'),
(2, 68, 1, 'created', 'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,', '2013-05-07 19:30:15', '2013-05-16 13:55:49'),
(3, 20, 1, 'closed', 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel', '2013-05-04 10:40:32', '2013-05-15 05:50:08'),
(4, 77, 1, 'finished', 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', '2013-05-08 19:38:24', '2013-05-12 17:08:33'),
(5, 37, 1, 'running', 'fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2013-03-11 15:30:55', '2013-05-12 15:48:34'),
(6, 18, 0, 'closed', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', '2013-05-09 17:39:36', '2013-05-18 20:14:58'),
(7, 74, 1, 'finished', 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.', '2013-05-07 19:37:30', '2013-05-18 09:11:07'),
(8, 61, 0, 'closed', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', '2013-05-02 13:52:07', '2013-05-18 18:43:07'),
(9, 72, 0, 'running', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus', '2013-03-07 03:11:12', '2013-05-12 12:23:42'),
(10, 26, 0, 'created', 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui', '2013-05-09 00:40:25', '2013-05-12 01:44:36'),
(11, 76, 1, 'closed', 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', '2013-05-02 04:58:25', '2013-05-16 03:22:13'),
(12, 78, 0, 'closed', 'vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi', '2013-05-02 11:00:09', '2013-05-17 02:34:17'),
(13, 7, 0, 'finished', 'diam vel arcu. Curabitur ut odio vel est tempor', '2013-05-09 20:06:46', '2013-05-15 17:26:59'),
(14, 50, 0, 'created', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc', '2013-05-08 01:08:36', '2013-05-15 17:23:01'),
(15, 37, 1, 'finished', 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna,', '2013-05-04 11:29:57', '2013-05-19 12:47:41'),
(16, 67, 1, 'running', 'justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', '2013-02-24 21:17:44', '2013-05-11 20:30:13'),
(17, 100, 0, 'closed', 'consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus', '2013-05-03 20:27:21', '2013-05-14 05:10:10'),
(18, 7, 1, 'finished', 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', '2013-05-08 17:09:30', '2013-05-18 16:33:00'),
(19, 50, 0, 'closed', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium', '2013-05-07 12:31:56', '2013-05-11 05:02:02'),
(20, 81, 1, 'created', 'est arcu ac orci. Ut semper pretium neque.', '2013-05-06 22:42:41', '2013-05-19 04:21:33'),
(21, 56, 0, 'finished', 'lobortis quam a felis ullamcorper', '2013-05-03 11:30:24', '2013-05-12 20:40:50'),
(22, 83, 1, 'closed', 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.', '2013-05-08 04:59:45', '2013-05-18 04:44:13'),
(23, 35, 1, 'finished', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie.', '2013-05-07 13:26:21', '2013-05-11 02:18:21'),
(24, 69, 0, 'closed', 'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.', '2013-05-02 15:32:25', '2013-05-15 04:21:59'),
(25, 83, 0, 'running', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing', '2013-03-05 18:10:24', '2013-05-11 05:27:50'),
(26, 81, 0, 'finished', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor', '2013-05-05 19:56:22', '2013-05-13 08:26:36'),
(27, 3, 1, 'finished', 'elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed', '2013-05-03 06:16:47', '2013-05-15 22:02:13'),
(28, 99, 1, 'created', 'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', '2013-05-07 19:41:12', '2013-05-13 05:48:19'),
(29, 22, 0, 'closed', 'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', '2013-05-07 12:44:31', '2013-05-16 17:40:30'),
(30, 53, 1, 'created', 'Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas', '2013-05-05 17:01:51', '2013-05-15 17:42:45'),
(31, 16, 1, 'closed', 'orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', '2013-05-03 16:12:33', '2013-05-13 15:46:54'),
(32, 42, 1, 'closed', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer', '2013-05-06 02:20:51', '2013-05-13 11:07:17'),
(33, 93, 0, 'closed', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem', '2013-05-02 09:55:43', '2013-05-15 20:30:58'),
(34, 73, 1, 'finished', 'nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla', '2013-05-05 13:23:22', '2013-05-18 04:11:57'),
(35, 38, 1, 'created', 'accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales', '2013-05-06 13:03:46', '2013-05-11 19:51:49'),
(36, 9, 0, 'created', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.', '2013-05-02 17:13:54', '2013-05-18 14:04:51'),
(37, 2, 1, 'closed', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet', '2013-05-04 07:51:41', '2013-05-12 19:05:49'),
(38, 25, 0, 'created', 'a ultricies adipiscing, enim mi', '2013-05-02 05:31:32', '2013-05-13 11:02:27'),
(39, 85, 1, 'finished', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque', '2013-05-02 11:45:26', '2013-05-15 06:15:10'),
(40, 48, 1, 'finished', 'Donec at arcu. Vestibulum ante ipsum primis in faucibus orci', '2013-05-05 12:30:02', '2013-05-17 20:55:50'),
(41, 81, 1, 'created', 'mauris ipsum porta elit, a feugiat', '2013-05-09 18:22:30', '2013-05-12 04:40:38'),
(42, 59, 1, 'running', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', '2013-02-12 22:56:33', '2013-05-14 12:56:06'),
(43, 3, 0, 'finished', 'lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', '2013-05-03 21:06:58', '2013-05-14 23:15:05'),
(44, 10, 0, 'created', 'ridiculus mus. Aenean eget magna. Suspendisse tristique', '2013-05-02 05:58:39', '2013-05-19 15:51:35'),
(45, 34, 1, 'closed', 'condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed', '2013-05-02 18:39:51', '2013-05-17 00:28:44'),
(46, 63, 1, 'created', 'auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In', '2013-05-07 01:45:53', '2013-05-11 16:53:48'),
(47, 60, 1, 'running', 'risus. Donec egestas. Aliquam nec enim.', '2013-03-16 11:36:07', '2013-05-18 13:12:01'),
(48, 39, 0, 'running', 'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', '2013-03-02 19:25:05', '2013-05-13 00:28:09'),
(49, 7, 1, 'created', 'augue porttitor interdum. Sed auctor odio', '2013-05-06 11:02:22', '2013-05-16 03:50:13'),
(50, 59, 1, 'created', 'Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', '2013-05-06 18:16:34', '2013-05-15 18:55:10'),
(51, 77, 1, 'running', 'eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu', '2013-02-21 08:28:55', '2013-05-18 01:13:30'),
(52, 64, 1, 'closed', 'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui', '2013-05-08 20:08:24', '2013-05-17 13:39:11'),
(53, 83, 1, 'closed', 'congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum', '2013-05-08 07:05:58', '2013-05-13 04:56:46'),
(54, 73, 1, 'created', 'et, commodo at, libero. Morbi', '2013-05-09 05:37:43', '2013-05-14 07:58:45'),
(55, 56, 1, 'finished', 'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum', '2013-05-04 23:09:16', '2013-05-13 04:40:42'),
(56, 64, 1, 'closed', 'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis', '2013-05-06 08:36:08', '2013-05-14 11:48:04'),
(57, 9, 0, 'created', 'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2013-05-02 04:26:35', '2013-05-12 17:35:22'),
(58, 84, 1, 'running', 'Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,', '2013-02-06 21:52:34', '2013-05-11 15:16:01'),
(59, 83, 0, 'closed', 'ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc', '2013-05-07 10:25:55', '2013-05-16 21:15:02'),
(60, 28, 0, 'running', 'mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.', '2013-03-08 10:04:53', '2013-05-11 17:52:58'),
(61, 40, 0, 'closed', 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus', '2013-05-04 10:40:49', '2013-05-19 03:12:04'),
(62, 77, 1, 'created', 'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', '2013-05-04 02:00:28', '2013-05-19 12:52:36'),
(63, 81, 0, 'running', 'Integer vulputate, risus a ultricies adipiscing,', '2013-02-06 22:16:18', '2013-05-15 04:03:00'),
(64, 51, 1, 'running', 'at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis', '2013-03-08 17:02:35', '2013-05-14 02:59:01'),
(65, 46, 0, 'finished', 'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis', '2013-05-05 00:41:18', '2013-05-16 00:21:23'),
(66, 12, 1, 'created', 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', '2013-05-09 09:55:59', '2013-05-16 23:09:56'),
(67, 94, 0, 'closed', 'semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', '2013-05-06 22:08:52', '2013-05-11 17:53:07'),
(68, 67, 0, 'created', 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '2013-05-03 06:31:03', '2013-05-17 23:28:13'),
(69, 95, 0, 'closed', 'ut eros non enim commodo hendrerit. Donec porttitor tellus', '2013-05-06 03:41:47', '2013-05-13 15:57:46'),
(70, 31, 0, 'finished', 'mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,', '2013-05-07 04:44:52', '2013-05-12 11:34:10'),
(71, 37, 0, 'closed', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', '2013-05-09 04:40:35', '2013-05-17 15:29:41'),
(72, 16, 0, 'running', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras', '2013-03-01 15:11:08', '2013-05-15 16:10:50'),
(73, 14, 0, 'created', 'dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis,', '2013-05-08 12:35:51', '2013-05-13 11:11:22'),
(74, 2, 0, 'running', 'porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', '2013-02-14 02:02:02', '2013-05-13 04:22:28'),
(75, 25, 0, 'created', 'luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus.', '2013-05-02 20:33:59', '2013-05-12 03:06:10'),
(76, 33, 1, 'running', 'dapibus quam quis diam. Pellentesque habitant morbi', '2013-03-02 06:51:39', '2013-05-14 21:55:55'),
(77, 93, 0, 'created', 'nulla. Cras eu tellus eu augue porttitor interdum. Sed', '2013-05-07 12:54:00', '2013-05-15 22:38:22'),
(78, 77, 1, 'closed', 'dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus.', '2013-05-04 21:40:37', '2013-05-14 20:03:27'),
(79, 40, 1, 'finished', 'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at', '2013-05-04 00:58:45', '2013-05-12 17:29:19'),
(80, 99, 1, 'created', 'nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus', '2013-05-04 09:11:51', '2013-05-12 03:55:25'),
(81, 53, 1, 'closed', 'sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', '2013-05-04 18:48:32', '2013-05-19 04:59:05'),
(82, 12, 0, 'created', 'aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit', '2013-05-09 03:35:24', '2013-05-17 02:45:13'),
(83, 50, 1, 'finished', 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non,', '2013-05-03 18:20:58', '2013-05-13 01:14:05'),
(84, 64, 1, 'finished', 'nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna', '2013-05-05 13:07:42', '2013-05-15 14:58:56'),
(85, 60, 1, 'finished', 'In mi pede, nonummy ut, molestie', '2013-05-07 14:59:06', '2013-05-14 22:28:44'),
(86, 76, 0, 'closed', 'dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc', '2013-05-02 10:55:17', '2013-05-15 10:49:14'),
(87, 29, 0, 'closed', 'quam quis diam. Pellentesque habitant', '2013-05-06 12:54:39', '2013-05-19 16:23:54'),
(88, 38, 1, 'finished', 'vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit', '2013-05-09 02:51:44', '2013-05-17 18:49:50'),
(89, 77, 1, 'created', 'dignissim lacus. Aliquam rutrum lorem', '2013-05-05 04:57:48', '2013-05-13 06:26:51'),
(90, 50, 0, 'finished', 'magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,', '2013-05-08 02:03:10', '2013-05-18 06:02:12'),
(91, 41, 0, 'running', 'In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod', '2013-03-01 19:59:10', '2013-05-13 08:02:16'),
(92, 44, 0, 'running', 'a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut', '2013-03-05 07:36:01', '2013-05-14 19:39:19'),
(93, 80, 1, 'closed', 'at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec', '2013-05-07 13:53:02', '2013-05-18 22:41:01'),
(94, 61, 1, 'running', 'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', '2013-02-27 01:46:05', '2013-05-12 20:03:31'),
(95, 19, 0, 'created', 'sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam.', '2013-05-03 01:41:44', '2013-05-14 23:38:31'),
(96, 91, 0, 'created', 'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum', '2013-05-07 21:08:29', '2013-05-12 16:41:00'),
(97, 98, 0, 'closed', 'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', '2013-05-04 04:58:02', '2013-05-11 05:58:27'),
(98, 94, 1, 'finished', 'odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', '2013-05-08 23:15:19', '2013-05-14 20:58:25'),
(99, 58, 1, 'created', 'arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', '2013-05-09 05:09:50', '2013-05-11 07:43:23'),
(100, 47, 0, 'finished', 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.', '2013-05-07 16:30:06', '2013-05-16 09:00:46');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answered_propositions`
--
ALTER TABLE `answered_propositions`
  ADD CONSTRAINT `fk_answered_propositions_participations1` FOREIGN KEY (`participation_id`) REFERENCES `participations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_answered_propositions_propositions1` FOREIGN KEY (`proposition_id`) REFERENCES `propositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `participations`
--
ALTER TABLE `participations`
  ADD CONSTRAINT `participations_ibfk_1` FOREIGN KEY (`taking_id`) REFERENCES `takings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `propositions`
--
ALTER TABLE `propositions`
  ADD CONSTRAINT `fk_propositions_questions1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_questions_question_groups1` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD CONSTRAINT `fk_question_groups_surveys` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `takings`
--
ALTER TABLE `takings`
  ADD CONSTRAINT `takings_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
