SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `app_surveys` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `app_surveys` ;

-- -----------------------------------------------------
-- Table `app_surveys`.`surveys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`surveys` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `description` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created_for_id` INT(11) NULL DEFAULT NULL,
  `created_by_id` INT(11) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_by_id` INT(11) NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`takings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`takings` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `survey_id` INT(11) NOT NULL,
  `anonymous` TINYINT(1) NOT NULL DEFAULT '0',
  `state` VARCHAR(31) NULL,
  `comment` TEXT NULL,
  `starts_at` DATETIME NULL DEFAULT NULL,
  `ends_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_takings_surveys1_idx` (`survey_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`participations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`participations` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `taking_id` INT(11) NOT NULL,
  `person_id` INT(11) NULL DEFAULT NULL,
  `participant_token` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_participations_takings1_idx` (`taking_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`question_groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`question_groups` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `survey_id` INT(11) NOT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `position` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_question_groups_surveys_idx` (`survey_id` ASC),
  CONSTRAINT `fk_question_groups_surveys`
    FOREIGN KEY (`survey_id`)
    REFERENCES `app_surveys`.`surveys` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`questions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `question_group_id` INT(11) NOT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `position` INT(11) NOT NULL,
  `settings` VARCHAR(1023) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_questions_question_groups1_idx` (`question_group_id` ASC),
  CONSTRAINT `fk_questions_question_groups1`
    FOREIGN KEY (`question_group_id`)
    REFERENCES `app_surveys`.`question_groups` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`answers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`answers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `participation_id` INT(11) NOT NULL,
  `question_id` INT(11) NOT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_answers_participations1_idx` (`participation_id` ASC),
  INDEX `fk_answers_questions1_idx` (`question_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`propositions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`propositions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `question_id` INT(11) NOT NULL,
  `position` INT(11) NOT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `answer_format` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `trigger_action` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `trigger_target_id` INT(11) NULL DEFAULT NULL,
  `trigger_target_type` VARCHAR(63) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_propositions_questions1_idx` (`question_id` ASC),
  CONSTRAINT `fk_propositions_questions1`
    FOREIGN KEY (`question_id`)
    REFERENCES `app_surveys`.`questions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `app_surveys`.`answered_propositions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app_surveys`.`answered_propositions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `answer_id` INT(11) NOT NULL,
  `proposition_id` INT(11) NOT NULL,
  `body` VARCHAR(255) NULL,
  `position` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_answered_propositions_answers1_idx` (`answer_id` ASC),
  INDEX `fk_answered_propositions_propositions1_idx` (`proposition_id` ASC),
  CONSTRAINT `fk_answered_propositions_answers1`
    FOREIGN KEY (`answer_id`)
    REFERENCES `app_surveys`.`answers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_answered_propositions_propositions1`
    FOREIGN KEY (`proposition_id`)
    REFERENCES `app_surveys`.`propositions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
