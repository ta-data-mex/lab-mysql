CREATE DATABASE lab_mysql;
USE lab_mysql;
show tables;
CREATE table cars (VIN varchar(45) primary key, manufacturer varchar(45), model varchar(45), year_car year, car_colo varchar(10));
CREATE table customers (idCustomers int primary key, name varchar(45),phone_number int,mail varchar(45),complete_adress varchar(45));
CREATE table sales_person (staff_id int primary key, name varchar(45),company_store varchar(45));
CREATE table invoice (invoice_number int primary key,date_invoice year,VIN varchar(45), foreign key(VIN) references cars(VIN),
customer_id int, foreign key(customer_id) references customers(idCustomers),
sales_person_related int, foreign key(sales_person_related) references sales_person(staff_id));
INSERT into cars values ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');
INSERT into cars values ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT into cars values ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT into customers values (10001,'Pablo Picasso',1234,'','Madrid');
INSERT into customers values (20001,'Abraham Lincoln',5678,'','Miami');
INSERT into customers values (30001,'Napoléon Bonaparte',91011,'','Paris');
INSERT into sales_person values (00001,'Petey Cruiser','Madrid');
INSERT into sales_person values (00002,'Paul Molive','Berlin');
INSERT into sales_person values (00003,'Anna Sthesia','Barcelona');
INSERT into invoice values (852399038,2018,'3K096I98581DHSNUP',10001,00001);
INSERT into invoice values (731166526,2018,'ZM8G7BEUQZ97IH46V',20001,00002);
INSERT into invoice values (271135104,2019,'RKXVNNIHLVVZOUB4M',30001,00003);