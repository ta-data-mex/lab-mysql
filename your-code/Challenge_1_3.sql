drop database lab_mysql;
create database lab_mysql;
USE lab_mysql;
CREATE TABLE Invoices (
    InvoiceID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    SaleData DATETIME,
    UnitPrice DECIMAL(12 , 2 ),
    Paymentmethod VARCHAR(40),
    Discount INT(2),
    SalesPersonID INT,
    CarID INT,
    CustomerId INT
);
CREATE TABLE Cars (
    CardID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Manafacturer VARCHAR(40),
    Model VARCHAR(40),
    Year0f CHAR(40),
    Plates VARCHAR(6),
    Kilometres INT(6),
    color VARCHAR(10)
);
CREATE TABLE IF NOT EXISTS Libros (
    ISBN VARCHAR(40) NOT NULL UNIQUE KEY,
    Nombre_libro VARCHAR(40) NOT NULL UNIQUE KEY,
	Categoria varchar(40),
    Autor varchar(40),
    best_seller varchar(40)
    );

insert into libros(ISBN,Nombre_libro,Categoria,Autor,best_seller) 
values("ISBN-X0X0X0X","El juego de Ender","Ciencia ficción","Orson Scott",2),
("ISBN-B0B0B0B","Piensa rápido piensa lento","Debate","Daniel Kahneman ",1),
("ISBN-A0A0A0A","Ready Player Oneo","Ciencia Ficcion","Ernest Cline ",1);

show tables;



