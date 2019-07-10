#CREATE DATABASE lab_mysql;
#USE lab_mysql;
#CREATE TABLE cars (vin_number VARCHAR(45),manufacturer VARCHAR(45),model VARCHAR(45),year_model INT,color VARCHAR(45));
#INSERT INTO cars VALUES('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');
#INSERT INTO cars VALUES('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
#INSERT INTO cars VALUES('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
#INSERT INTO cars VALUES('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
#INSERT INTO cars VALUES('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
#INSERT INTO cars VALUES('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2018,'Gray');

#CREATE TABLE customers (cusomer_id INT, name_customer VARCHAR(45),phone VARCHAR(45),email VARCHAR(45),address VARCHAR(45),city VARCHAR(45),state_province VARCHAR(45),country VARCHAR(45),postal INT);
#INSERT INTO customers VALUES(10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045);
#INSERT INTO customers VALUES(20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States',33130);
#INSERT INTO customers VALUES(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);

#CREATE TABLE salespersons (staff_id INT, name_salesperson VARCHAR(45),store VARCHAR(45));
#INSERT INTO salespersons VALUES(00001,'Petey Cruiser','Madrid');
#INSERT INTO salespersons VALUES(00002,'Anna Sthesia','Barcelona');
#INSERT INTO salespersons VALUES(00003,'Paul Molive','Berlin');
#INSERT INTO salespersons VALUES(00004,'Gail Forcewind','Paris');
#INSERT INTO salespersons VALUES(00005,'Paige Turner','Mimia');
#INSERT INTO salespersons VALUES(00006,'Bob Frapples','Mexico City');
#INSERT INTO salespersons VALUES(00007,'Walter Melon','Amsterdam');
#INSERT INTO salespersons VALUES(00008,'Shonda Leer','Sao Paulo');

CREATE TABLE invoices (invoice_number INT, date_invoice VARCHAR(45),car INT,customer INT,sales_person INT);
INSERT INTO invoices VALUES(852399038,'22-08-2018',0,1,3);
INSERT INTO invoices VALUES(731166526,'31-12-2018',3,0,5);
INSERT INTO invoices VALUES(271135104,'22-01-2019',2,2,7);


