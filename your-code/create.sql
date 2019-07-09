USE lab_mysql;

CREATE TABLE Customers (CustomerID INT, Name VARCHAR(20), Phone TEXT, Email VARCHAR(32), Adress TEXT, City TEXT, State VARCHAR(32), Postal_code TINYINT);

CREATE TABLE Salespersons (Staff_ID INT, Name TEXT, Store TEXT);

CREATE TABLE Cars (ID TINYINT,VIN TEXT, Manufacturer VARCHAR(32), Model VARCHAR(32), Year TINYINT, Color VARCHAR(20));
                                                                                                      
CREATE TABLE Invoices (Invoice_Number INT, Date_ DATE, Car TINYINT, Customer TINYINT, Sales_person TINYINT);