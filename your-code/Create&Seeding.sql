CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE Invoices (
Invoice INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
sale_date DATE,
unit_price DECIMAL(12,2),
PaymentMethod VARCHAR(40),
Discount INT(2),
SalesPersonID INT,
CardID INT NOT NULL,
CustomerId INT);

CREATE TABLE cars (
CardID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Manufacturer VARCHAR(40) NOT NULL,
Model VARCHAR(40) NOT NULL,
YearOfManufacture CHAR(4),
Plates VARCHAR(6),
KilometersRun INT(6),
Color VARCHAR(10));

SHOW TABLES;
DROP TABLE Invoices;
DROP TABLE cars;



CREATE TABLE IF NOT EXISTS podcasts (
    PodcastID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title VARCHAR(40) NOT NULL UNIQUE,
    Pais VARCHAR(40) NOT NULL,
    Duracion INT(6),
    Tema VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS calificacion (
    TitleID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title VARCHAR(40) NOT NULL UNIQUE,
    Tema VARCHAR(15) NOT NULL,
    Descargas INT(20),
    Suscriptores INT(20),
    Cal INT(1)
);

CREATE TABLE IF NOT EXISTS usuarios (
    UserID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Genero VARCHAR(10),
    Edad INT(2),
    Pais CHAR(15),
    Ciudad CHAR(15),
    Dispositivo VARCHAR(15)
);

SHOW TABLES;

INSERT INTO podcasts VALUES (
'1',
'Historias perdidas',
'Mexico',
'10',
'Historia'
);

INSERT INTO podcasts VALUES (
'2',
'Gastropod',
'Estados Unidos',
'30',
'Gastronomia'
);

INSERT INTO podcasts VALUES (
'3',
'Nada que ver',
'Mexico',
'30',
'Entretenimiento'
);

INSERT INTO calificacion VALUES (
'1',
'Historias perdidas',
'Historia',
'500',
'400',
'5'
);

INSERT INTO calificacion VALUES (
'2',
'Gastropod',
'Gastronomia',
'800',
'760',
'5'
);

INSERT INTO calificacion VALUES (
'3',
'Nada que ver',
'Entretenimiento',
'1800',
'1740',
'4'
);

INSERT INTO usuarios VALUES (
'1',
'Mujer',
'18',
'Mexico',
'CDMX',
'iOS'
);

INSERT INTO usuarios VALUES (
'2',
'Mujer',
'27',
'Mexico',
'Merida',
'Android'
);

INSERT INTO usuarios VALUES (
'3',
'Hombre',
'29',
'Canada',
'Toronto',
'Android'
);