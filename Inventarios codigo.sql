-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Inventario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Inventario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Inventario` DEFAULT CHARACTER SET utf8 ;
USE `Inventario` ;

-- -----------------------------------------------------
-- Table `Inventario`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(17) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario`.`Customers` (
  `idCustomers` INT NOT NULL,
  `Customer ID` INT NULL,
  `Name` VARCHAR(100) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(100) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` INT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario`.`Salespersons` (
  `idSalespersons` INT NOT NULL,
  `Staff ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  `Customers_idCustomers` INT NOT NULL,
  PRIMARY KEY (`idSalespersons`),
  INDEX `fk_Salespersons_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `Inventario`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice Number` INT NULL,
  `Date` DATE NULL,
  `Car` INT NULL,
  `Customer` INT NULL,
  `Sales Person` INT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Salespersons_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `Inventario`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `Inventario`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventario`.`DETALLE DE VENTAS Cars_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventario`.`DETALLE DE VENTAS Cars_has_Salespersons` (
  `Cars_idCars` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`Cars_idCars`, `Salespersons_idSalespersons`),
  INDEX `fk_Cars_has_Salespersons_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Cars_has_Salespersons_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Salespersons_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `Inventario`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `Inventario`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
