CREATE TABLE `board`.`coverletter` (
  `num` INT(11) NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(200) NOT NULL,
  `subject` VARCHAR(200) NOT NULL,
  `content` VARCHAR(200) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  `boarddate` DATE NOT NULL,
  `score` INT(11) NOT NULL,
  PRIMARY KEY (`num`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
