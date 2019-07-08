CREATE DATABASE lab_mysql1;
SHOW databases;


CREATE TABLE Cars (
    id int,
    VIN int,
    manufacturer varchar(100),
    model varchar(100),
    ano int ,
    color varchar(100) 
);

CREATE TABLE Customers (
    id int,
    customerid int,
    nombre varchar(100),
    telefono int,
    email varchar(100),
    adress varchar(100),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    zip int 
);

CREATE TABLE Salespersons (
    id int,
    staffid int,
    nombre varchar(100),
    store varchar(100) 
);

CREATE TABLE Invoices (
     id int,
     invoicenumber int,
     fecha int,
     car int,
     customer int,
     salesperson int
);

USE `lab_mysql1`;

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (0, 31, 'Volkswagen', 'Tiguan', 2019, 22);

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (1, 54, 'FORD', 'Mustang', 2010, 45);

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (2, 43, 'Peugeot', '208', 2018, 31);

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (3, 46, 'FIAT', 'UNO', 2017, 55);

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (4, 55, 'Peugeot', '308', 2017, 98);

INSERT INTO Cars (id, VIN, manufacturer, model, ano, color)
VALUES (5, 65, 'Peugeot', '2008', 2019, 98);

INSERT INTO Customers (id, customerid, nombre, telefono, email, adress, city, state, country, zip)
VALUES (1, 234, 'Pablo Picaso', 442523545, 'ppicaso@gmail.com', "La chipera", "Madrid", "Madrid", "Spain", 434);

INSERT INTO Customers (id, customerid, nombre, telefono, email, adress, city, state, country, zip)
VALUES (2, 200, 'Abraham Lincoln', 42525425, 'alincoln@gmail.com', "120 www", "Miami", "Florida", "United States", 535);

INSERT INTO Invoices (id, invoicenumber, fecha, car, customer, salesperson)
VALUES (0, 450, 22-11-83, 0, 1, 3);

INSERT INTO Invoices (id, invoicenumber, fecha, car, customer, salesperson)
VALUES (1, 4420, 25-11-83, 3, 0, 5);

INSERT INTO Invoices (id, invoicenumber, fecha, car, customer, salesperson)
VALUES (2, 45, 28-11-83, 8, 9, 3);

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (0, 001, "Petey Cruiser", "Madrid");

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (1, 002, "Anna Sthesia", "Barcelona");

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (0, 002, "Paul Molive", "Berlin");

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (0, 003, "Gail Forcewind", "Paris");

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (0, 004, "Paige Turner", "Mimia");

INSERT INTO Salespersons (id, staffid, nombre, store)
VALUES (0, 004, "Paige Turner", "Mimia");

UPDATE Salespersons
SET store = "Miami"
WHERE staffid = 4;

DELETE FROM Cars WHERE manufacturer='FIAT';



