CREATE DATABASE lab_mysql;
SHOW databases;


CREATE TABLE Cars (
    VIN int,
    manufacturer varchar(100),
    model varchar(100),
    año int ,
    color int 
);

CREATE TABLE Customers (
    id int,
    nombre varchar(100),
    telefono varchar(100),
    email varchar(100),
    adress varchar(100),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    zip int 
);

CREATE TABLE Salespersons (
    id int,
    nombre varchar(100),
    store varchar(100) 
);

CREATE TABLE Invoices (
     number int,
     fecha int,
     car varchar(100),
     customer varchar(100),
     salesperson varchar(100)
);

USE `lab_mysql`;