use cars_sales;
insert into 
cars (CarID, Manufacturer, Model, YearOfManufacture, Plates, KilometersRun, Color)
values(1, 'Volkswagen', 'Tiguan', 2019, 'AB7786', 30000, 'Blue'),
(0, 'Peugeot', 'Rifter', 2019, 'CD0809', 10000, 'Red'),
(0, 'Ford', 'Fusion', 2015, '089C10', 50000, 'White'),
(0, 'Toyota', 'RAV4', 2017, 'CXX989', 100000, 'Silver'),
(0, 'Volvo', 'V60', 2018, 'ABX80V', 5000, 'Gray'),
(0, 'Volvo', 'V60', 2016, 'X56RT3', 15000, 'Gray');

insert into
customers (CustomerID, CustomerName, PhoneNumber, Address, City, State, Country, ZipCode)
values(101, 'Pablo Picasso', '+34 636 176382', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(201, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(301, 'Napoleón Bonaparte', '+33 1 7975 4000', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

insert into
stores (StoreID, StoreName, City, State, Country)
values(101, 'Spain Headquarters', 'Madrid', 'Madrid', 'Spain'),
(102, 'Spain Cataluña', 'Barcelona', 'Cataluña', 'Spain'),
(201, 'Germany Headquarters', 'Berlin', 'Berlin', 'Germany'),
(301, 'France Headquarters', 'Paris', 'Île-de-France', 'France'),
(401, 'USA Miami', 'Mimia', 'Florida', 'United States'),
(501, 'Mexico Headquarters', 'Mexico City', 'Federal District', 'Mexico'),
(601, 'Central Europe Headquarters', 'Amsterdam', 'Holland', 'Nehterlands'),
(701, 'Brazil Headquarters', 'São Paulo', 'São Paulo', 'Brazil');

insert into
salespeople (SalesPersonID, VendorName, JobTitle, WeeklyWage, StoreNumber)
values(1, 'Petey Cruiser', 'Jr Salesperson', 1000, 101),
(0, 'Anna Sthesia', 'Sr Salesperson', 1500, 102),
(0, 'Paul Molive', 'Jr Manager', 2000, 201),
(0, 'Gail Forcewind', 'Manager', 2500, 301),
(0, 'Paige Turner', 'Regional Manager', 3500, 401),
(0, 'Bob Frapples', 'Assistant Regional Manager', 2300, 501),
(0, 'Walter Melon', 'Sales VP', 8000, 601),
(0, 'Shonda Leer', 'Sr Salesperson', 1500, 701);

insert into
invoices (InvoiceID, SaleDate, CarKey, CustomerNumber, VendorNumber)
values(5555, 2018-08-22, 1, 201, 3),
(0, 2018-12-31, 3, 101, 5),
(0, 2019-01-22, 2, 301, 7);