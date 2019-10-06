Drop database lab_mysql;
Create database lab_mysql;
USE lab_mysql;

-- PARA CREAR LA TABLA
CREATE TABLE Invoices (
    InvoiceID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    SaleDate DATETIME,
    UnitPrice DECIMAL(12 , 2 ),
    PaymentMethod VARCHAR(40),
    Discount INT(2),
    SalesPersonID INT,
    CarID INT NOT NULL,
    CustomerId INT
);

CREATE TABLE cars (
    CardID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Manufacturer VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    YearofManufacture CHAR(4),
    Plates VARCHAR(6),
    KilometersRun INT(6),
    Color VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Insectos (
    insecto_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre_bicho VARCHAR(40) NOT NULL UNIQUE,
    Alas INT,
    Tamano DECIMAL(6 , 2)
);

CREATE TABLE IF NOT EXISTS Votantes (
	ID CHAR(200),
    Estado CHAR(50),
    Municipio CHAR(100),
    Seccion CHAR(1),
    Sexo BOOL,
    Edad INT,
    Voto BOOL
);

CREATE TABLE IF NOT EXISTS Partidos (
	Partido_ganador VARCHAR(1000),
    Sexo_ganador BOOL
);

CREATE TABLE IF NOT EXISTS CasillasNoInstaladas (
	Instalada BOOL,
    Incendiada INT,
    Asaltada INT,
    AmenazaBomba INT
);
 
 -- PARA LLENAR LA TABLA (SEEDING)
 
INSERT INTO Votantes (ID, Estado, Municipio, Seccion, Sexo, Edad, Voto)
Values (1, "Aguascalientes", "Aguascalientes", "U", 0, 50, 1);

INSERT INTO Votantes (ID, Estado, Municipio, Seccion, Sexo, Edad, Voto)
Values (230, "NuevoLeon", "Monterrey", "S", 1, 34, 0);

INSERT INTO Partidos (Partido_ganador, Sexo_ganador)
Values ("PRI", 0);

INSERT INTO Partidos (Partido_ganador, Sexo_ganador)
Values ("PAN", 1);

INSERT INTO CasillasNoInstaladas (Instalada, Incendiada, Asaltada, AmenazaBomba)
Values (1, 1, 1, 0);

INSERT INTO CasillasNoInstaladas (Instalada, Incendiada, Asaltada, AmenazaBomba)
Values (0, 0, 0, 1);

-- UPDATE DATABASE

SET SQL_SAFE_UPDATES = 0;

-- Voy a actualizar para que la row 1 diga CDMX en lugar de Aguascalientes en la base de Votantes

UPDATE Votantes SET Estado = 'CDMX' WHERE ID = 1;

-- Voy a borrar la columna de CasillasNoInstaladas donde Incendidada es 0
DELETE FROM CasillasNoInstaladas WHERE Incendiada = 0;



SHOW TABLES;
DROP TABLE invoices;
SHOW TABLES 