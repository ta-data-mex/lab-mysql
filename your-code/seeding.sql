USE sales;
INSERT INTO cars (CarID, Manufacturer, Model, YearOfManufacture, Plates, Color)
VALUES(0, 'Volkswagen', 'Tiguan', 2019, 'AB7786', 'Blue'),
(1, 'Peugeot', 'Rifter', 2019, 'CD0809', 'Red'),
(2, 'Ford', 'Fusion', 2018, '089C10', 'White'),
(3, 'Toyota', 'RAV4', 2018, 'CXX989', 'Silver'),
(4, 'Volvo', 'V60', 2019, 'ABX80V', 'Gray'),
(5, 'Volvo', 'V60 Cross County', 2016, 'X56RT3', 'Gray');

INSERT INTO customers (CustomerID, CustomerName, PhoneNumber, Address, City, State, Country, ZipCode)
VALUES(1001, 'Pablo Picasso', '+34 636 176382', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(2001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(3001, 'Napoleón Bonaparte', '+33 1 7975 4000', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO
salespeople (SalesPersonID, VendorName, StoreLocation)
VALUES(0, 'Petey Cruiser', Madrid),
(1, 'Anna Sthesia', Barcelona),
(2, 'Paul Molive', Berlin),
(3, 'Gail Forcewind', Paris),
(4, 'Paige Turner', Mimia),
(5, 'Bob Frapples', Mexico City),
(6, 'Walter Melon', Amsterdam),
(7, 'Shonda Leer', São Paulo);

INSERT INTO invoices (InvoiceID, SaleDate, CarKey, CustomerNumber, VendorNumber)
VALUES(0, 2018-08-22, 0, 2001, 3),
(1, 2018-12-31, 3, 1001, 5),
(2, 2019-01-22, 2, 3001, 7);