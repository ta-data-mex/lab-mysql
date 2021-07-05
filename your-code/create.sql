USE lab_mysql;
-- 1.- Cars Inventory
CREATE TABLE cars_inventory(
	vin VARCHAR(30),
	manufacturer VARCHAR(30),
	model  VARCHAR(30),
	year YEAR,
	color VARCHAR(30),
    PRIMARY KEY(vin));
-- 2.- Salepersons
CREATE TABLE salespersons(
	staff_id INT,
	name VARCHAR(30),
	store  VARCHAR(30),
    PRIMARY KEY(staff_id));
-- 3.- Customer Information
CREATE TABLE customers_information(
	customer_id INT,
	name VARCHAR(30),
	phone_number VARCHAR(30),
	email VARCHAR(30),
	address VARCHAR(30),
	city VARCHAR(30),
	state_province VARCHAR(30),
	country VARCHAR(30),
	zip_postal_code INT,
    PRIMARY KEY(customer_id));
-- 4.- Invoices table
CREATE TABLE invoices(
	invoice_id VARCHAR(30),
    date DATE,
    vin VARCHAR(30),
    customer_id INT,
    staff_id INT,
    CONSTRAINT invoices_ibfk_1 FOREIGN KEY(vin) REFERENCES cars_inventory(vin),
    CONSTRAINT invoices_ibfk_2 FOREIGN KEY(customer_id) REFERENCES customers_information(customer_id),
    CONSTRAINT invoices_ibfk_3 FOREIGN KEY(staff_id) REFERENCES salespersons(staff_id));