create database CH1_car_dealership_company;
use CH1_car_dealership_company;
show tables;
create table cars(VIN int primary key, manufacturer varchar(100), model varchar(50), yr int, color varchar(25));
create table customer(id int primary key, name varchar(100), phone int, email varchar(100), adress varchar(200),city varchar(100), state varchar(100), country varchar(100), postal_code int);
create table salesperson(id int primary key, name varchar(100), store varchar(100));
create table invoices(invoice_number int primary key, dates date, car varchar(10),  customer_id int, salesperson_id int, foreign key (customer_id) references customer(id), foreign key (salesperson_id) references salesperson(id));
