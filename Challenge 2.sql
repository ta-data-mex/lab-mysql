-- drop database lab_mysql; 
CREATE DATABASE lab_mysql;
USE lab_mysql;
-- CREATE TABLE invoices (
    InvoiceID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    SaleDate DATETIME,
    UnitPrice DECIMAL(12 , 2 ),
    PaymentMethod VARCHAR(40),
    Discount INT(2),
    SalesPersonID INT,
    CarID INT NOT NULL,
    CustomerID INT
);
-- CREATE TABLE cars (
    CarID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Menufacturerr VARCHAR(40) NOT NULL,
    Model VARCHAR(40) NOT NULL,
    YearOfManufacture CHAR(4),
    Plates VARCHAR(6),
    KilometersRun INT(6),
    Color VARCHAR(10)
-- );
-- SHOW TABLES;

CREATE TABLE IF NOT EXISTS Tickets (
    ID_Ticket INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Shopping_Date DATETIME,
    Item_Name VARCHAR(40),
    Total_Cost DECIMAL(9, 2 ) NOT NULL,
    Store_Name VARCHAR(40)
);
SHOW TABLES;
  
  CREATE TABLE IF NOT EXISTS Items (
    Id_Item INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Brand_Item VARCHAR(40),
    ID_Ticket INT NOT NULL,
    Discount DECIMAL(2 , 2 ),
    Shopping_Date DATETIME
); 
SHOW TABLES;

CREATE TABLE IF NOT EXISTS Stores (
    ID_Store INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Ticket INT NOT NULL,
    Total_Items INT NOT NULL,
    Total_Cost DECIMAL(9 , 2 ) NOT NULL,
    Shopping_Date DATETIME
);

SHOW TABLES;

INSERT INTO TICKETS (ID_Ticket, Shopping_Date, Item_Name, Total_Cost, Store_Name) VALUES(223, '2019-10-08 00:00:00', "pantalon", 449.00, "Zara");
INSERT INTO TICKETS (ID_Ticket, Shopping_Date, Item_Name, Total_Cost, Store_Name) VALUES(456, '2019-09-05 00:00:00', "saco", 899.00, "Liverpool");
INSERT INTO TICKETS (ID_Ticket, Shopping_Date, Item_Name, Total_Cost, Store_Name) VALUES(456, '2019-09-05 00:00:00', "falda", 299.00, "Liverpool");
INSERT INTO ITEMS (Id_Item, Brand_Item, ID_Ticket, Discount, Shopping_Date) VALUES(9887, 'Guess', 456, 0.05, '2019-09-05 00:00:00');
INSERT INTO ITEMS (Id_Item, Brand_Item, ID_Ticket, Discount, Shopping_Date) VALUES(9998, 'Elle', 456, 0.10, '2019-09-05 00:00:00');
INSERT INTO STORES (ID_Store, ID_Ticket, Total_Items, Total_Cost, Shopping_Date) VALUES(11687, 456, 2, 1198.00, '2019-09-05 00:00:00');

SHOW TABLES;
 
    
   
   
    
    
    



