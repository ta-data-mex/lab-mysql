USE lab_mysql;

INSERT INTO Customers 
    (CustomerID, Name, Phone, Email, Adress, City, State, Postal_Code)  
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', -, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 28045),
 	(20001,	'Abraham Lincoln', '+1 305 907 7086', -, '120 SW 8th St', 'Miami', 'Florida', 33130),
 	(30001, 'Napoléon Bonaparte','+33 1 79 75 40 00', -, '40 Rue du Colisée', 'Paris', 'Île-de-France', 75008);
                   
INSERT INTO Cars
    (ID, VIN, Manufacturer, Model, Year, Color)
VALUES
    (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
 	(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
 	(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
 	(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
 	(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
 	(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
                                                                                                      
INSERT INTO Salespersons
    (Staff_ID, Name, Store)
VALUES
    (00001, 'Petey Cruiser', 'Madrid'),
 	(00002, 'Anna Sthesia', 'Barcelona'),
 	(00003, 'Paul Molive', 'Berlin'),
 	(00004, 'Gail Forcewind', 'Paris'),
 	(00005, 'Paige Turner', 'Mimia'),
 	(00006, 'Bob Frapples', 'Mexico City'),
 	(00007, 'Walter Melon', 'Amsterdam'),
 	(00008, 'Shonda Leer', 'São Paulo');
                                                                                                      
INSERT INTO Invoices
    (Invoice_Number, Date_, Car, Customer, Sales_person)
VALUES
    (852399038,	'22-08-2018', 0, 1,	3),
 	(731166526,	'31-12-2018', 3, 0,	5),
 	(271135104,	'22-01-2019', 2, 2,	7);