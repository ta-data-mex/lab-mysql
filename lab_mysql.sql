# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.16)
# Database: cars_sales
# Generation Time: 2019-07-09 03:00:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `id` int(20) DEFAULT NULL,
  `vin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `manufacturers` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;

INSERT INTO `cars` (`id`, `vin`, `manufacturers`, `model`, `year`, `color`)
VALUES
	(0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
	(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
	(5,'DAM41UDN3CHU2WVF7','Volvo','V60 Cross Country',2019,'Gray'),
	(3,'HKNDGS7CU31E9Z7JW','Toyota','Rav4',2018,'Silver'),
	(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
	(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');

/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cutomer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cutomer`;

CREATE TABLE `cutomer` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_id` int(100) NOT NULL,
  `name_customer` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_postal` int(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `cutomer` WRITE;
/*!40000 ALTER TABLE `cutomer` DISABLE KEYS */;

INSERT INTO `cutomer` (`id`, `customer_id`, `name_customer`, `phone_number`, `email`, `address`, `city`, `state`, `country`, `zip_postal`)
VALUES
	('0',10001,'Pablo Picasso','+34 636 17 63 82',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
	('2',20001,'Abraham Lincoln','+33 1 79 75 40 00',NULL,'120 SW 8th St','Miami','Florida','United States',33130),
	('1',30001,'Napoléon Bonaparte','+33 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France',75008);

/*!40000 ALTER TABLE `cutomer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `date_invoice` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `car` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sales_person` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;

INSERT INTO `invoices` (`id`, `invoice_id`, `date_invoice`, `car`, `customer`, `sales_person`)
VALUES
	('1',271135104,'31-12-2018','3','0','5'),
	('2',731166526,'22-01-2019	','2','2','7'),
	('0',852399038,'22-08-2018','0','1','3');

/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table salesperson
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesperson`;

CREATE TABLE `salesperson` (
  `id` int(20) DEFAULT NULL,
  `id_staff` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name_staff` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `store` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `salesperson` WRITE;
/*!40000 ALTER TABLE `salesperson` DISABLE KEYS */;

INSERT INTO `salesperson` (`id`, `id_staff`, `name_staff`, `store`)
VALUES
	(0,'00001','Petey Cruiser','Madrid'),
	(1,'00002','Anna Sthesia	','Barcelona'),
	(2,'00003','Paul Molive','Berlin'),
	(3,'00004','Gail Forcewind','Paris'),
	(4,'00005','Paige Turner','Miami'),
	(5,'00006','Bob Frapples','Mexico City'),
	(6,'00007','Walter Melon','Amsterdam'),
	(7,'00008','Shonda Leer','São Paulo');

/*!40000 ALTER TABLE `salesperson` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
