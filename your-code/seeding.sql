USE lab_mysql;
-- 1.- Cars Inventory
INSERT INTO cars_inventory (vin, manufacturer, model, year, color)
	VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
	('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
	('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
-- 2.- Salepersons
INSERT INTO salespersons (staff_id, name, store)
	VALUES 
	(1, 'Petey Cruiser', 'Madrid'),
	(2, 'Anna Sthesia', 'Barcelona'),
	(3, 'Paul Molive', 'Berlin'),
	(4, 'Gail Forcewind', 'Paris'),
	(5, 'Paige Turner', 'Mimia'),
	(6, 'Bob Frapples', 'Mexico City'),
	(7, 'Walter Melon', 'Amsterdam'),
	(8, 'Shonda Leer', 'São Paulo');
-- 3.- Customer Information
INSERT INTO customers_information (customer_id, name, phone_number, email, address, city, state_province, country, zip_postal_code)
	VALUES
	(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid' 'Madrid', 'Spain', 28045),
	(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida' 'Florida', 'United States', 33130),
(	30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France' 'Île-de-France', 'France', 75008);
	-- 4.- Invoices table
INSERT INTO invoices (invoice_id, date, vin, customer_id, staff_id)
	VALUES
	(852399038, STR_TO_DATE('22-08-2018', '%d-%M-%Y'), '3K096I98581DHSNUP', 20001, 4),
	(731166526, STR_TO_DATE('31-12-2018', '%d-%M-%Y'), 'HKNDGS7CU31E9Z7JW', 10001, 6),
	(271135104, STR_TO_DATE('22-01-2019', '%d-%M-%Y'), 'RKXVNNIHLVVZOUB4M', 30001, 8);
    
    
INSERT INTO invoices (invoice_id, date, vin, customer_id, staff_id)
	VALUES
	(852399038, STR_TO_DATE('22-08-2018', '%d,%m,%Y'), '3K096I98581DHSNUP', 20001, 4),
	(731166526, STR_TO_DATE('31-12-2018', '%d,%m,%Y'), 'HKNDGS7CU31E9Z7JW', 10001, 6),
	(271135104, STR_TO_DATE('22-01-2019', '%d,%m,%Y'), 'RKXVNNIHLVVZOUB4M', 30001, 8);