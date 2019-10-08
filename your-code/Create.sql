drop database lab_sql;
CREATE DATABASE lab_sql;
use lab_sql;
create table if not EXISTS JUEGO
(juegoID int (5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(40) NOT NULL,
Desarrolladora varchar(30) NOT NULL,
Fecha_lanzamiento varchar(4) not null,
Genero varchar(15) not null);

create table if not exists TIENDA
(tiendaID int (5) primary key not null auto_increment,
encargado_tienda varchar(40) not null,
ciudad varchar (30) not null,
num_sucursal mediumint (10) not null);

create table if not exists CLIENTE
(clienteID int (5) primary key not null auto_increment,
nombre varchar (40),
email varchar (50),
fecha_nacimiento varchar(12) not null,
telefono varchar (20) not null,
usuarioweb boolean);
