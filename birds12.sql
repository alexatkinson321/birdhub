-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bird_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bird_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bird_db` DEFAULT CHARACTER SET utf8 ;
USE `bird_db` ;

-- -----------------------------------------------------
-- Table `bird_db`.`classification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`classification` (
  `classification_id` TINYINT(4) NOT NULL,
  `classification` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`classification_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('1', 'raptor');
INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('2', 'waterfowl');
INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('3', 'shore bird');
INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('4', 'songbird');
INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('5', 'terrestrial');
INSERT INTO `bird_db`.`classification` (`classification_id`, `classification`) VALUES ('6', 'corvidae');

-- -----------------------------------------------------
-- Table `bird_db`.`color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`color` (
  `color_id` TINYINT(4) NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`color_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;

INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('1', 'black');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('2', 'grey');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('3', 'white');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('4', 'brown');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('5', 'red');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('6', 'orange');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('7', 'yellow');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('8', 'green');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('9', 'blue');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('10', 'purple');
INSERT INTO `bird_db`.`color` (`color_id`, `color`) VALUES ('11', 'pink');


-- -----------------------------------------------------
-- Table `bird_db`.`size`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`size` (
  `size_id` TINYINT(4) NOT NULL AUTO_INCREMENT,
  `size` VARCHAR(45) NOT NULL,
  `size_description` TEXT NULL,
  PRIMARY KEY (`size_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

INSERT INTO `bird_db`.`size` (`size_id`, `size`, `size_description`) VALUES ('1', 'XS', 'Extra small birds, typically around an ounce or less. Ex: sparrow, finch, starling, bluebird');
INSERT INTO `bird_db`.`size` (`size_id`, `size`, `size_description`) VALUES ('2', 'S', 'Small birds are typically the size of the average songbird, typically under a pound. Ex: blue jay, american robin, red-winged blackbird. ');
INSERT INTO `bird_db`.`size` (`size_id`, `size`, `size_description`) VALUES ('3', 'M', 'Medium sized birds are typically over a pound in size. Ex: crows, ducks, loons.');
INSERT INTO `bird_db`.`size` (`size_id`, `size`, `size_description`) VALUES ('4', 'L', 'Large birds are multiple pounds in size and are typically birds of pray. Ex: eagles, geese, herons.');

-- -----------------------------------------------------
-- Table `bird_db`.`beak_use`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`beak_use` (
  `beak_use_id` TINYINT(4) NOT NULL AUTO_INCREMENT,
  `beak_use` VARCHAR(45) NOT NULL,
  `beak_use_description` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`beak_use_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('1', 'filtering', 'Waterfowl use their beaks for filtering out water, mud, and other items the bird doesnt want to ingest.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('2', 'probing', 'Shorebirds have beaks that are used for probing, they help the birds search for worms, crustaceans, and insects in shallow mud or water.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('3', 'catching insects', 'Many songbirds have beaks that help in catching insects. These beaks are usually very short and small and help the birds pick insects off leaves, twigs, and bark.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('4', 'cracking seeds', 'Many songbirds have cone-shaped beaks that are short and thick. These beaks are very strong and help the bird crack various types of seeds.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('5', 'tearing meat', 'Raptors, or bird of prey, have hooked beaks that are used to tear into the meat of their prey. These beaks are large and strong enough to peirce the skull of their prey.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('6', 'drilling holes', 'Beaks that are used for drilling holes are typically found in woodpeckers. The beaks are long and tapered which helps the bird drill holes into trees like a chisel. These birds drill holes to feed on instects under the bark of trees, and create holes to nest in.');
INSERT INTO `bird_db`.`beak_use` (`beak_use_id`, `beak_use`, `beak_use_description`) VALUES ('7', 'fishing', 'Some waterfowl and shorebirds have beaks that are specifically designed for fishing. Thses beaks are typically long and slender, used for striking at animals like fish, frogs, and crustaceans.');

-- -----------------------------------------------------
-- Table `bird_db`.`subclass`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`subclass` (
  `subclass_id` TINYINT(4) NOT NULL AUTO_INCREMENT,
  `subclass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`subclass_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;

INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('11', 'turkey');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('12', 'pheasant');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('13', 'pigeon');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('14', 'dove');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('15', 'wader');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('16', 'gull');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('17', 'loon');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('18', 'vulture');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('19', 'jay');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('20', 'crow');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('21', 'chickadee');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('22', 'starling');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('23', 'swallow');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('24', 'sparrow');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('25', 'icterid');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('26', 'crane');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('27', 'heron');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('28', 'woodpecker');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('29', 'swan');


-- -----------------------------------------------------
-- Table `bird_db`.`bird`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`bird` (
  `bird_id` INT(11) NOT NULL AUTO_INCREMENT,
  `bird_species` VARCHAR(45) NOT NULL,
  `bird_classification_id` TINYINT(4) NOT NULL,
  `bird_subclass_id` TINYINT(4) NOT NULL,
  `bird_main_color_id` TINYINT NOT NULL,
  `bird_size_id` TINYINT(4) NOT NULL,
  `bird_beak_use_id` TINYINT(4) NOT NULL,
  `bird_beak_color_id` TINYINT(4) NOT NULL,
  `bird_image` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`bird_id`),
  INDEX `fk_snake_head1_idx` (`bird_beak_use_id` ASC) VISIBLE,
  INDEX `fk_snake_diameter1_idx` (`bird_size_id` ASC) VISIBLE,
  INDEX `fk_snake_pattern1_idx` (`bird_subclass_id` ASC) VISIBLE,
  INDEX `fk_snake_classification1_idx` (`bird_classification_id` ASC) VISIBLE,
  INDEX `fk_bird_color1_idx` (`bird_beak_color_id` ASC) VISIBLE,
  INDEX `fk_bird_color2_idx` (`bird_main_color_id` ASC) VISIBLE,
  CONSTRAINT `fk_bird_classification`
    FOREIGN KEY (`bird_classification_id`)
    REFERENCES `bird_db`.`classification` (`classification_id`),
  CONSTRAINT `fk_bird_size`
    FOREIGN KEY (`bird_size_id`)
    REFERENCES `bird_db`.`size` (`size_id`),
  CONSTRAINT `fk_bird_beak_use`
    FOREIGN KEY (`bird_beak_use_id`)
    REFERENCES `bird_db`.`beak_use` (`beak_use_id`),
  CONSTRAINT `fk_bird_subclass`
    FOREIGN KEY (`bird_subclass_id`)
    REFERENCES `bird_db`.`subclass` (`subclass_id`),
  CONSTRAINT `fk_bird_beak_color`
    FOREIGN KEY (`bird_beak_color_id`)
    REFERENCES `bird_db`.`color` (`color_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bird_main_color`
    FOREIGN KEY (`bird_main_color_id`)
    REFERENCES `bird_db`.`color` (`color_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bird_db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`user` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_fname` VARCHAR(45) NOT NULL,
  `user_lname` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  `user_password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bird_db`.`sighting`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`sighting` (
  `sighting_id` INT(11) NOT NULL AUTO_INCREMENT,
  `sighting_date` DATE NOT NULL,
  `sighting_user_id` INT(11) NOT NULL,
  `sighting_bird_id` INT(11) NOT NULL,
  PRIMARY KEY (`sighting_id`),
  INDEX `fk_sighting_user1_idx` (`sighting_user_id` ASC) VISIBLE,
  INDEX `fk_sighting_snake1_idx` (`sighting_bird_id` ASC) VISIBLE,
  CONSTRAINT `fk_sighting_snake1`
    FOREIGN KEY (`sighting_bird_id`)
    REFERENCES `bird_db`.`bird` (`bird_id`),
  CONSTRAINT `fk_sighting_user1`
    FOREIGN KEY (`sighting_user_id`)
    REFERENCES `bird_db`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bird_db`.`bird_colors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`bird_colors` (
  `bird_id` INT(11) NOT NULL,
  `color_id` TINYINT(4) NOT NULL,
  PRIMARY KEY (`bird_id`, `color_id`),
  INDEX `fk_snake_colors_snake_idx` (`bird_id` ASC) VISIBLE,
  INDEX `fk_snake_colors_color1_idx` (`color_id` ASC) VISIBLE,
  CONSTRAINT `fk_color_id`
    FOREIGN KEY (`color_id`)
    REFERENCES `bird_db`.`color` (`color_id`),
  CONSTRAINT `fk_bird_id`
    FOREIGN KEY (`bird_id`)
    REFERENCES `bird_db`.`bird` (`bird_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;