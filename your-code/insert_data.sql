INSERT INTO lab_mysql.cars(VIN,manufacturer,model,year,color)
VALUES
('K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');
      

INSERT INTO lab_mysql.customers(customer_id,name,phone,email,address,city,province,country,postal)
VALUES
(10001,	'Pablo Picasso','34 636 17 6382',0,'Paseo de la Chopera 14','Madrid','Madrid','Spain',28045),
(20001,	'Abraham Lincoln',	'1 305 907 7086',	0,	'120 SW 8th St', 'Miami',	'Florida',	'United States',	33130),
(30001,	'Napoléon Bonaparte','33 179 75 4000',0,	'40 Rue du Colisée'	,'Paris',	'Île-de-France',	'France',	75008);

INSERT INTO lab_mysql.salespersons (staff_id,name,store)
VALUES
(00001,	'Petey Cruiser','Madrid'),
(00002,	'Anna Sthesia',	'Barcelona'),
(00003,	'Paul Molive',	'Berlin'),
(00004,	'Gail Forcewind','Paris'),
(00005,	'Paige Turner',	'Mimia'),
(00006,	'Bob Frapples',	'Mexico City'),
(00007,	'Walter Melon',	'Amsterdam'),
(00008,	'Shonda Leer',	'São Paulo');

INSERT INTO lab_mysql.invoices (invoice_number,date,car,customer,salesperson)
VALUES
(852399038,	str_to_date('22-08-2018',date), 0,1,3),
(731166526,	STR_TO_DATE('31-12-2018',date),	3,0,5),
(271135104,	STR_TO_DATE('22-01-2019',date),	2,	2,7);


