CREATE DATABASE car_dealership;
USE car_dealership;


CREATE TABLE manufacturer (
id_manufacturer INT NOT NULL AUTO_INCREMENT,
manufacturer_name VARCHAR(30),
PRIMARY KEY (id_manufacturer)
);

CREATE TABLE car (
id_car INT NOT NULL,
VIN varchar(20) NOT NULL,
 id_manufacturer INT,
 model VARCHAR(20),
manufactured_year DATE,
color VARCHAR(20),
PRIMARY KEY (VIN),
CONSTRAINT FK_cars_manufacurer FOREIGN KEY (id_manufacturer)
REFERENCES manufacturer(id_manufacturer)
ON DELETE CASCADE
);

/*SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE car CASCADE;
SET FOREIGN_KEY_CHECKS = 1;
*/

CREATE TABLE customer (
id_customer VARCHAR(20) NOT NULL,
customer_name VARCHAR(100) NOT NULL, 
customer_age INT NOT NULL,
customer_address VARCHAR(200),
email VARCHAR(100),
PRIMARY KEY (id_customer)
);

CREATE TABLE salesperson (
id_salesperson VARCHAR(20) NOT NULL,
salesperson_name VARCHAR(100) NOT NULL,
salespersona_age INT NOT NULL,
store_name VARCHAR(20) NOT NULL,
PRIMARY KEY (id_salesperson)
);

CREATE TABLE invoice (
id_invoice INT AUTO_INCREMENT,
id_salesperson VARCHAR(20) NOT NULL,
id_customer VARCHAR(20) NOT NULL, 
VIN VARCHAR(10) NOT NULL,
PRIMARY KEY (id_invoice),
CONSTRAINT FK_invoicesalesperson FOREIGN KEY (id_salesperson)
REFERENCES salesperson(id_salesperson),
CONSTRAINT FK_invoicescustomer FOREIGN KEY (id_customer)
REFERENCES customer(id_customer),
CONSTRAINT FK_invoicescar FOREIGN KEY (VIN)
REFERENCES car(VIN)
);
