CREATE TABLE `board`.`covercomments` (
  `boardNum` INT(11) NOT NULL,
  `comments` VARCHAR(200) NOT NULL,
  `id` VARCHAR(200) NULL,
  `email` VARCHAR(200) NULL,
  `date` DATE NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`num`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;