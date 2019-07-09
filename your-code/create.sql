create table invoices(
	EntryID int not null,
	InvoiceID int not null,
	Date date,
	VIN int,
	CustomerID int,
	StaffID int
);
create table salespersons(
	EntryID int not null,
	StaffD int not null,
	Name varchar(100),
	Store varchar(100),
	primary key (EntryID)
);
create table cars(
	EntryID int not null,
	VIN int not null,
	Manufacturer varchar(50),
	Model varchar(50),
	Year year,
	Color varchar(50),
	primary key (EntryID)
);
create table customers(
	EntryID int not null,
	CustomerID int not null,
	Name varchar(100),
	Phone varchar(10),
	Email varchar(50),
	Address varchar(255),
	City varchar(100),
	State varchar(100),
	Country varchar(100),
	Zipcode varchar(50),
	primary key (EntryID)
);