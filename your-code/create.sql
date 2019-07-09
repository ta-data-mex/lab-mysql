USE lab_mysql; 
CREATE TABLE Car (ID INT, VIN VARCHAR(20), Manufacturer CHAR(20), Model VARCHAR(20), Año INT(4), Color VARCHAR(20));
CREATE TABLE Customer (ID INT, Customer_Id INT(10), Nombre CHAR(50), Tel VARCHAR(20), Email VARCHAR(30), Direction VARCHAR(50), State CHAR(30), Country CHAR(30), ZipCode INT(10)); 
CREATE TABLE Salespersons (ID INT, Salesperons_Id INT(10), Name CHAR(50), Store VARCHAR(30)); 
CREATE TABLE Invoices (ID VARCHAR(24), Invoice_Id INT(20), Date VARCHAR(12), Car VARCHAR(12), Customer VARCHAR(12), Salesperson VARCHAR(12));