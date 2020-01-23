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

INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('1', 'owl');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('2', 'hawk');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('3', 'eagle');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('4', 'thrush');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('5', 'finch');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('6', 'cardinal');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('7', 'duck');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('8', 'goose');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('9', 'grouse');
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('10', 'quail');
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
INSERT INTO `bird_db`.`subclass` (`subclass_id`, `subclass`) VALUES ('30', 'tern');


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

INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('1', 'Great horned owl', '1', '1', '2', '4', '5', '1', 'great_horned_owl.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('2', 'Eastern screech owl', '1', '1', '2', '3', '5', '1', 'eastern_screech_owl.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('3', 'Barred owl', '1', '1', '4', '3', '5', '7', 'barred_owl.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('4', 'Barn owl', '1', '1', '3', '3', '5', '4', 'barn_owl.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('5', 'Red tailed hawk', '1', '2', '4', '4', '5', '1', 'red_tailed_hawk.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('6', 'Sharp shinned hawk', '1', '2', '4', '3', '5', '1', 'sharp_shinned_hawk.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('7', 'Northern goshawk', '1', '2', '2', '3', '5', '1', 'northern_goshawk.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('8', 'Bald eagle', '1', '3', '4', '4', '5', '7', 'bald_eagle.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('9', 'Golden eagle', '1', '3', '4', '4', '5', '2', 'golden_eagle.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('10', 'Eastern bluebird', '4', '4', '9', '1', '3', '1', 'eastern_bluebird.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('11', 'American robin', '4', '4', '4', '2', '4', '7', 'american_robin.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('12', 'Varied thrush', '4', '4', '6', '2', '3', '1', 'varied_thrush.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('13', 'Mountain bluebird', '4', '4', '9', '1', '3', '1', 'mountain_bluebird.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('14', 'Evening grosbeak', '4', '5', '7', '2', '4', '7', 'evening_grosbeak.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('15', 'Pine grosbeak', '4', '5', '5', '2', '4', '1', 'pine_grosbeak.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('16', 'Purple finch', '4', '5', '5', '1', '4', '2', 'purple_finch.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('17', 'American goldfinch', '4', '5', '7', '1', '4', '6', 'american_goldfinch.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('18', 'Northern cardinal', '4', '6', '5', '2', '4', '5', 'northern_cardinal.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('19', 'Painted bunting', '4', '6', '5', '1', '4', '2', 'painted_bunting.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('20', 'Blue grosbeak', '4', '6', '9', '1', '3', '2', 'blue_grosbeak.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('21', 'Scarlet tanager', '4', '6', '5', '1', '4', '4', 'scarlet_tanager.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('22', 'Western tanager', '4', '6', '7', '2', '3', '4', 'western_tanager.jpeg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('23', 'Wood duck', '2', '7', '4', '3', '1', '11', 'wood_duck.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('24', 'Mallard', '2', '7', '2', '3', '1', '7', 'mallard.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('25', 'Canvasback', '2', '7', '3', '3', '1', '1', 'canvasback.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('26', 'Northern pintail', '2', '7', '2', '3', '1', '1', 'northern_pintail.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('27', 'Canada goose', '2', '8', '2', '4', '1', '1', 'canada_goose.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('28', 'White fronted goose', '2', '8', '2', '4', '1', '6', 'white_fronted_goose.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('29', 'Mute swan', '2', '29', '3', '4', '1', '6', 'mute_swan.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('30', 'Northern bobwhite', '5', '10', '4', '2', '4', '2', 'northern_bobwhite.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('31', 'Sharp tailed grouse', '5', '9', '4', '3', '4', '1', 'sharp_tailed_grouse.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('32', 'Ruffed grouse', '5', '9', '4', '3', '4', '4', 'ruffed_grouse.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('33', 'Wild turkey', '5', '11', '1', '4', '4', '3', 'wild_turkey.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('34', 'Ring necked pheasant', '5', '12', '4', '3', '4', '3', 'ring_necked_pheasant.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('35', 'Rock pigeon', '4', '13', '2', '3', '3', '3', 'rock_pigeon.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('36', 'Band tailed pigeon', '4', '13', '2', '3', '3', '7', 'band_tailed_pigeon.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('37', 'Mourning dove', '4', '14', '4', '3', '3', '1', 'mourning_dove.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('38', 'Ruddy ground dove', '4', '14', '4', '2', '3', '2', 'ruddy_ground_dove.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('39', 'Killdeer', '3', '15', '4', '2', '2', '1', 'killdeer.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('40', 'Black bellied plover', '3', '15', '1', '2', '2', '1', 'black_bellied_plover.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('41', 'Long billed dowitcher', '3', '15', '4', '2', '2', '1', 'long_billed_dowitcher.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('42', 'Ring billed gull', '3', '16', '3', '3', '7', '7', 'ring_billed_gull.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('43', 'Roseate tern', '3', '30', '3', '3', '7', '6', 'roseate_tern.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('44', 'Common loon', '2', '17', '1', '3', '7', '1', 'common_loon.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('45', 'Read throated loon', '2', '17', '2', '3', '7', '1', 'red_throated_loon.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('46', 'Turkey vulture', '1', '18', '1', '4', '5', '3', 'turkey_vulture.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('47', 'White ibis', '2', '15', '3', '4', '2', '11', 'white_ibis.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('48', 'Glossy ibis', '2', '15', '4', '4', '2', '2', 'glossy_ibis.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('49', 'Blue jay', '6', '19', '9', '2', '4', '1', 'blue_jay.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('50', 'Canada jay', '6', '19', '2', '2', '3', '1', 'canada_jay.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('51', 'Black capped chickadee', '4', '21', '2', '1', '3', '1', 'chickadee.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('52', 'American crow', '6', '20', '1', '3', '4', '1', 'american_crow.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('53', 'Common starling', '4', '22', '1', '1', '4', '7', 'common_starling.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('54', 'Cliff swallow', '4', '23', '4', '1', '3', '1', 'cliff_swallow.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('55', 'House sparrow', '4', '24', '4', '1', '3', '1', 'house_sparrow.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('56', 'Red winged blackbird', '4', '25', '1', '2', '4', '1', 'red_winged_blackbird.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('57', 'Baltimore oriole', '4', '25', '6', '1', '3', '2', 'baltimore_oriole.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('58', 'Meadowlark', '4', '25', '7', '2', '3', '2', 'meadowlark.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('59', 'Sandhill crane', '3', '26', '4', '4', '2', '1', 'sandhill_crane.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('60', 'Great blue heron', '3', '27', '2', '4', '7', '6', 'great_blue_heron.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('61', 'Pileated woodpecker', '4', '28', '1', '3', '6', '1', 'pileated_woodpecker.jpg');
INSERT INTO `bird_db`.`bird` (`bird_id`, `bird_species`, `bird_classification_id`, `bird_subclass_id`, `bird_main_color_id`, `bird_size_id`, `bird_beak_use_id`, `bird_beak_color_id`, `bird_image`) VALUES ('62', 'Red bellied woodpecker', '4', '28', '3', '2', '6', '1', 'red_bellied_woodpecker.jpg');

-- -----------------------------------------------------
-- Table `bird_db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bird_db`.`user` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_fname` VARCHAR(45) NOT NULL,
  `user_lname` VARCHAR(45) NOT NULL,
  `user_favorite_bird` VARCHAR(45),
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

INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('1', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('1', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('1', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('2', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('2', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('2', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('2', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('3', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('3', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('3', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('4', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('4', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('4', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('4', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('5', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('5', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('5', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('6', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('6', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('6', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('6', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('7', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('7', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('7', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('7', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('8', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('8', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('8', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('8', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('9', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('9', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('9', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('10', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('10', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('10', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('11', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('11', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('11', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('11', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('11', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('12', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('12', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('13', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('13', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('13', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('14', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('14', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('14', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('14', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('15', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('15', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('15', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('15', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('16', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('16', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('16', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('16', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('17', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('17', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('17', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('18', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('18', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('19', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('19', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('19', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('19', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('20', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('20', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('20', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('21', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('21', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('22', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('22', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('22', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('22', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('23', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('23', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('23', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('23', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('24', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('24', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('24', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('24', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('25', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('25', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('25', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('25', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('25', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('26', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('26', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('26', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('26', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('27', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('27', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('27', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('28', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('28', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('28', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('29', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('29', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('29', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('30', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('30', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('30', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('30', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('31', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('31', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('31', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('31', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('32', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('32', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('32', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('33', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('33', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('33', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('34', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('35', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('35', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('35', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('35', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('36', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('36', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('36', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('37', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('37', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('37', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('37', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('38', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('38', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('38', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('38', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('38', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('39', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('39', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('39', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('40', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('40', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('40', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('41', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('41', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('41', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('42', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('42', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('42', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('42', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('43', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('43', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('43', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('43', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('44', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('44', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('44', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('45', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('45', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('45', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('45', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('45', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('46', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('46', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('46', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('46', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('47', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('47', '11');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('48', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('48', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('48', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('48', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('48', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('49', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('49', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('49', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('49', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('50', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('50', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('50', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('51', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('51', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('51', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('52', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('53', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('53', '10');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('53', '8');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('53', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('53', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('54', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('54', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('54', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('55', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('55', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('55', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('56', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('56', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('56', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('57', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('57', '6');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('57', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('58', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('58', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('58', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('58', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('59', '4');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('59', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('59', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('59', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('59', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('60', '2');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('60', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('60', '9');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('60', '7');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('61', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('61', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('61', '5');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('62', '3');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('62', '1');
INSERT INTO `bird_db`.`bird_colors` (`bird_id`, `color_id`) VALUES ('62', '5');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;