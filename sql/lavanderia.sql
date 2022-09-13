-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lavanderia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lavanderia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lavanderia` DEFAULT CHARACTER SET utf8mb4 ;
USE `lavanderia` ;

-- -----------------------------------------------------
-- Table `lavanderia`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lavanderia`.`persona` (
  `idPersona` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(64) NOT NULL,
  `apellidos` VARCHAR(64) NOT NULL,
  `documento` VARCHAR(64) NOT NULL,
  `email` VARCHAR(128) NULL,
  `contrasena` VARCHAR(128) NULL,
  `tipo` ENUM('cliente', 'administrador') NOT NULL DEFAULT 'cliente',
  PRIMARY KEY (`idPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lavanderia`.`recibo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lavanderia`.`recibo` (
  `idRecibo` INT NOT NULL AUTO_INCREMENT,
  `fkIdPersona` INT NOT NULL,
  `fechaEntrega` DATE NOT NULL,
  PRIMARY KEY (`idRecibo`),
  INDEX `fk_recibo_persona_idx` (`fkIdPersona` ASC),
  CONSTRAINT `fk_recibo_persona`
    FOREIGN KEY (`fkIdPersona`)
    REFERENCES `lavanderia`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lavanderia`.`prenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lavanderia`.`prenda` (
  `idPrenda` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`idPrenda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lavanderia`.`recibo_prenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lavanderia`.`recibo_prenda` (
  `fkIdRecibo` INT NOT NULL,
  `fkIdPrenda` INT NOT NULL,
  `cantidad` TINYINT NOT NULL,
  `estado` ENUM('Bueno', 'Regular', 'Malo') NOT NULL DEFAULT 'Bueno',
  `observacion` VARCHAR(64) NULL,
  PRIMARY KEY (`fkIdRecibo`, `fkIdPrenda`),
  INDEX `fk_recibo_has_prenda_prenda1_idx` (`fkIdPrenda` ASC),
  INDEX `fk_recibo_has_prenda_recibo1_idx` (`fkIdRecibo` ASC),
  CONSTRAINT `fk_recibo_has_prenda_recibo1`
    FOREIGN KEY (`fkIdRecibo`)
    REFERENCES `lavanderia`.`recibo` (`idRecibo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_recibo_has_prenda_prenda1`
    FOREIGN KEY (`fkIdPrenda`)
    REFERENCES `lavanderia`.`prenda` (`idPrenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
