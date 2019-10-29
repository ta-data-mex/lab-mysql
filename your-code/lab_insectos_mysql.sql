--No lo habia subido
drop database lab_mysql;
create database lab_mysql;
use lab_mysql;
CREATE TABLE Invoices (
    InvoiceID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    sale_date DATE,
    unit_price DECIMAL(12 , 2 ),
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
-- show tables;

drop database animales;
create database animales;
use animales;
CREATE TABLE IF NOT EXISTS insectos (
    insectoID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL UNIQUE,
    patas INT,
    alas INT,
    tamano DECIMAL(6 , 3 ),
    color VARCHAR(40),
    masa DECIMAL(6 , 3 )
);

CREATE TABLE IF NOT EXISTS grupos (
    grupoID INT(5) primary KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(40),
    reinas INT,
    div_trabajo BOOL
);

-- drop table habitats;
CREATE TABLE IF NOT EXISTS habitats (
    habitatID INT(5) primary KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(40),
    arboles BOOL,
    bajo_tierra BOOL
);

insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (1, "hormiga_roja", 6, 0, 10.0, "rojo", 0.1 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (2, "mariposa_monarca", 6, 2, 40.0, "naranja", 2 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (3, "escarabajo_hercules", 6, 2, 50.0, "negro", 20 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (4, "mosca_fruta", 6, 2, 3.0, "cafe", 0.2 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (5, "mosquito", 6, 2, 20.0, "cafe", 0.2 );

insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (1, "individual", 0, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (2, "colonia", 0, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (3, "colonia_avanzada", 1, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (4, "mega_colonia", 20, 1 );

insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (1, "tropical", 1, 1 );
insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (2, "desertico", 0, 1 );
insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (3, "templado", 1, 1 );