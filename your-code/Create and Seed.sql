CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE Invoices (
    InvoiceID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    SaleDate DATETIME,
    UnitPrice DECIMAL(12 , 2 ),
    PaymentMethod VARCHAR(40),
    Discount INT(2),
    SalesPersonID INT,
    CarID INT NOT NULL,
    CustomerID INT
);
CREATE TABLE cars (
    CarID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Manufacturer VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    YearOfManufacture CHAR(4),
    Plates VARCHAR(6),
    KilometersRun INT(6),
    Color VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Insectos (
InsectoID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NombreBicho VARCHAR(40) NOT NULL UNIQUE,
Alas INT,
Tamano DECIMAL(6,2)
);

CREATE TABLE NodoEnergia (
NodoID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NombreNodo CHAR(9),
Tension INT(3),
ZonaCarga VARCHAR(10),
ZonaTransmision VARCHAR(25)
);

CREATE TABLE PrecioNodo (
NodoID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Dia DATE,
Hora TIME,
PrecioPML DECIMAL(7,2),
PrecioEnergia DECIMAL(7,2),
PrecioCongestion DECIMAL(7,2),
PrecioPerdidas DECIMAL(7,2)
);

CREATE TABLE Mercado (
NodoID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Dia DATE,
Hora TIME,
PrecioMDA DECIMAL(7,2),
PrecioMTR DECIMAL(7,2)
);

Show tables;

INSERT INTO NodoEnergia (NodoID, NombreNodo, Tension, ZonaCarga, ZonaTransmision)
VALUES (1,"04MGL-115",115,"Tepic","Nayarit"),
(0,"05TTP-115",115,"Tepozotlan","Morelos"),
(0,"07OLA-230",230,"La Paz","BajaSur");

INSERT INTO PrecioNodo (NodoID, Dia, Hora, PrecioPML, PrecioEnergia, PrecioCongestion, PrecioPerdidas)
VALUES (1,03/03/2019,01,250.50,220,30,0.50),
(0,03/03/2019,01,270.50,230,40,0.50);

INSERT INTO Mercado (NodoID, Dia, Hora, PrecioMDA, PrecioMTR)
VALUES (1,03/03/2019,01,250,298.90),
(0,03/03/2019,01,270.50,287.1),
(0,03/03/2019,01,187.50,230.40);

SELECT *FROM Mercado
