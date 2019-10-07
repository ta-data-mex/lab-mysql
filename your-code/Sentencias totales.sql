-- CREATE DATABASE lab_mysql;
use lab_mysql;
CREATE TABLE IF NOT EXISTS paises (
    Id_pais INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre_Pais VARCHAR(40) NOT NULL UNIQUE,
    Id_Continente VARCHAR(4) NOT NULL,
    Id_idioma INT,
    Capital VARCHAR(40) NOT NULL,
    Numero_Habitantes BIGINT
);

CREATE TABLE IF NOT EXISTS continente (
    Id_continente VARCHAR(4) NOT NULL PRIMARY KEY,
    Nombre_Continente VARCHAR(20) NOT NULL,
    Numero_Paises INT
);

CREATE TABLE IF NOT EXISTS idiomas (
    Id_idioma INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Idioma VARCHAR(20),
    EsOficial BOOLEAN
);

INSERT INTO lab_mysql.continente values (0,"America",35);
INSERT INTO lab_mysql.continente values (1,"Europa",50);
INSERT INTO lab_mysql.continente values (2,"Asia",48);
INSERT INTO lab_mysql.continente values (3,"Africa",54);
INSERT INTO lab_mysql.continente values (4,"Oceania",14);

INSERT INTO lab_mysql.idiomas values (0,"Espanol",TRUE);
INSERT INTO lab_mysql.idiomas values (0,"Ingles",TRUE);
INSERT INTO lab_mysql.idiomas values (0,"Frances",TRUE);
INSERT INTO lab_mysql.idiomas values (0,"Aleman",TRUE);

INSERT INTO lab_mysql.paises values (0,"Mexico","AME",1,"CDMX",129200000);
INSERT INTO lab_mysql.paises values (0,"Estados Unidos","AME",2,"Washington,D.C",327200000);
INSERT INTO lab_mysql.paises values (0,"Francia","EUR",3,"Paris",66990000);

UPDATE lab_mysql.continente SET Id_continente = 'AME' WHERE (Id_continente = '0');
UPDATE lab_mysql.continente SET Id_continente = 'EUR' WHERE (Id_continente = '1');
UPDATE lab_mysql.continente SET Id_continente = 'ASI' WHERE (Id_continente = '2');
UPDATE lab_mysql.continente SET Id_continente = 'AFR' WHERE (Id_continente = '3');
UPDATE lab_mysql.continente SET Id_continente = 'OCE' WHERE (Id_continente = '4');

