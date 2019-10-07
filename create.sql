DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE IF NOT EXISTS Cars
    (ID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(50),
    manufacturer VARCHAR(25),
    model VARCHAR(10) ,
    year VARCHAR(10) ,
    color VARCHAR(25));

CREATE TABLE IF NOT EXISTS Customers
    (ID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customerID VARCHAR(50),
    name VARCHAR(40) NOT NULL,
    phone VARCHAR(40) NOT NULL,
    email VARCHAR(40)NOT NULL,
    address VARCHAR(150) NOT NULL,
    city VARCHAR(40) NOT NULL);
 CREATE TABLE IF NOT EXISTS Salespersons
    (ID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    staffID VARCHAR(50),
    name VARCHAR(50),
    store VARCHAR(50));
 CREATE TABLE IF NOT EXISTS Invoices
    (ID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    invoice_number VARCHAR(256),
    invoice_date DATE NOT NULL,
    car_id INT(5),
    customer_id INT(5),
    salesperson_id INT(5),
    INDEX cars_ID(car_id),
    FOREIGN KEY (car_id)
        REFERENCES Cars(ID)
        ON DELETE CASCADE,
    INDEX cust_id(customer_id),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(ID)
        ON DELETE CASCADE,
    INDEX sales_id(salesperson_id),
    FOREIGN KEY (salesperson_id)
        REFERENCES Salespersons(ID)
        ON DELETE CASCADE
    );