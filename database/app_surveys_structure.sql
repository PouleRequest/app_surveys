-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2014 at 09:17 AM
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
  `answer_id` int(11) NOT NULL,
  `proposition_id` int(11) NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_answered_propositions_answers1_idx` (`answer_id`),
  KEY `fk_answered_propositions_propositions1_idx` (`proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participation_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_answers_participations1_idx` (`participation_id`),
  KEY `fk_answers_questions1_idx` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

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
  PRIMARY KEY (`id`),
  KEY `fk_participations_takings1_idx` (`taking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=202 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answered_propositions`
--
ALTER TABLE `answered_propositions`
  ADD CONSTRAINT `fk_answered_propositions_answers1` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_answered_propositions_propositions1` FOREIGN KEY (`proposition_id`) REFERENCES `propositions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`participation_id`) REFERENCES `participations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
