CREATE DATABASE sales;
USE sales;

CREATE TABLE cars (CarID int(5) primary key NOT NULL, Manufacturer VARCHAR(50) NOT NULL, Model VARCHAR(50) NOT NULL, YearOfManufacture CHAR(5) NOT NULL, Plates VARCHAR(10), Color VARCHAR(10));

CREATE customers (CustomerID int(5) primary key NOT NULL, CustomerName VARCHAR(50) NOT NULL, PhoneNumber VARCHAR(20) NOT NULL, Email VARCHAR(50), Address VARCHAR(50) NOT NULL, City VARCHAR(50) NOT NULL, State VARCHAR(50) NOT NULL, Country VARCHAR(50) NOT NULL, ZipCode VARCHAR(10) NOT NULL);

CREATE TABLE salespeople (SalesPersonID int(5) primary key NOT NULL, VendorName VARCHAR(50) NOT NULL), StoreLocation VARCHAR(50));

CREATE TABLE invoices (InvoiceID int(5) primary key NOT NULL, SaleDate DATE NOT NULL, CarKey int NOT NULL, foreign key (CarKey) references cars(CarID), CustomerNumber int NOT NULL, foreign key (CustomerNumber) references customers(CustomerID), VendorNumber int NOT NULL, foreign key (VendorNumber) references salespeople(SalesPersonID));