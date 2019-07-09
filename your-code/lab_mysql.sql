create DATABASE lab_mysql;
USE lab_mysql;

create table cars(id int primary key, VIN varchar(20), Manufacturer varchar(20), Model varchar(100), Year int, Color varchar(20));

create table Customers(id int primary key, Customer_ID int, Phone varchar(50), Email varchar(50), Address varchar(100), City varchar(50), State varchar(50), Country varchar(50), Postal int);

create table Salespersons(id int primary key, Staff_ID int, Name varchar(50), Store varchar(50));
Query OK, 0 rows affected (0,01 sec)


create table Invoices(id int primary key, Invoice_number int, Date date, foreign key(id) references cars(id), foreign key(id) references Customers(id), foreign key(id) references Salespersons(id));

insert into cars VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"), (1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"), (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"), (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"), (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"), (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

alter table Customers add column Name varchar(50) after Customer_ID;

insert into Customers VALUES (0, 10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045), (1, 20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United  States", 33130), (2, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);


insert into Salespersons VALUES (0, 00001, "Petey Cruiser", "Madrid"), (1, 00002, "Anna Sthesia", "Barcelona"), (2, 00003, "Paul Molive", "Berlin"), (3, 00004, "Gail ForceWind", "Paris"), (4, 00005, "Paige Turner", "Miami"), (5, 00006, "Bob Frapples", "Mexico City"), (6, 00006, "Walter Melon", "Amsterdam"), (7, 00008, "Shonda Leer", "São Paul0");

ALTER TABLE Invoices ADD COLUMN Car_ID INT DEFAULT(1),  ADD FOREIGN KEY (Car_ID) REFERENCES Salespersons(id);

ALTER TABLE Invoices ADD COLUMN Customer_ID INT DEFAULT(1), ADD FOREIGN KEY (Customer_ID) REFERENCES Customers(id);

ALTER TABLE Invoices ADD COLUMN Sales_ID  INT DEFAULT(1),  ADD FOREIGN KEY (Sales_ID) REFERENCES Salespersons(id);

SET FOREIGN_KEY_CHECKS=0;

insert into Invoices VALUES (0, 852399038, '2018-08-22', 0, 1, 3), (1, 731166526, '2018-12-31', 3, 0, 5), (2, 271135104, '2019-01-22', 2, 2, 7);

SET FOREIGN_KEY_CHECKS=1;

UPDATE Customers SET Email = 'ppicasso@gmail.com'  WHERE Name = "Pablo Picasso";

UPDATE Customers SET Email = 'lincoln@us.gov' WHERE Name = "Abraham Lincoln";

UPDATE Customers SET Email = 'hello@napoleon.me' WHERE Name = "Napoléon Bonaparte";

UPDATE Salespersons SET Store = 'Miami' WHERE Name = 'Paige Turner';

DELETE FROM cars WHERE id = 4;