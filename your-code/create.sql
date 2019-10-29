--no lo habia subido
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