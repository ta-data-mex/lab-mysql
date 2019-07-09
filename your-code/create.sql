create database cars_sales;
use cars_sales;
show tables;

create table customers (
CustomerID int(3) primary key NOT NULL AUTO_INCREMENT, 
CustomerName VARCHAR(40) NOT NULL, 
PhoneNumber VARCHAR(15) NOT NULL, 
Email VARCHAR(30), 
Address VARCHAR(100), 
City VARCHAR(30) NOT NULL, 
State VARCHAR(30) NOT NULL, 
Country VARCHAR(30) NOT NULL, 
ZipCode VARCHAR(6));

create table stores (
StoreID int(3) primary key NOT NULL AUTO_INCREMENT, 
StoreName VARCHAR(40), 
StoreAddress VARCHAR(100), 
City VARCHAR(30) NOT NULL, 
State VARCHAR(30) NOT NULL, 
Country VARCHAR(30) NOT NULL, 
ZipCode VARCHAR(6));

create table salespeople (
SalesPersonID int(3) primary key NOT NULL AUTO_INCREMENT, 
VendorName VARCHAR(40) NOT NULL, 
JobTitle VARCHAR(40) NOT NULL, 
WeeklyWage int(4) NOT NULL, 
StoreNumber int, foreign key (StoreNumber) references stores(StoreID));

create table cars (
CarID int(5) primary key NOT NULL AUTO_INCREMENT, 
Manufacturer VARCHAR(40) NOT NULL, 
Model VARCHAR(40) NOT NULL, 
YearOfManufacture CHAR(4), 
Plates VARCHAR(6), 
KilometersRun INT(6), 
Color VARCHAR(10);

create table invoices (
InvoiceID int(5) primary key NOT NULL AUTO_INCREMENT, 
SaleDate DATE,
CarKey int NOT NULL, foreign key (CarKey) references cars(CarID),
CustomerNumber int NOT NULL, foreign key (CustomerNumber) references customers(CustomerID), 
VendorNumber int NOT NULL, foreign key (VendorNumber) references salespeople(SalesPersonID), 
TotalPrice int(6) NOT NULL, 
Discount int(2), 
PaymentMethod int(1) NOT NULL);