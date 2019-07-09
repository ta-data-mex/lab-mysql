USE car_dealership;

/*INSERT INTO TABLA manufacturer*/
INSERT INTO manufacturer (manufacturer_name) VALUES('Volkswagen');
INSERT INTO manufacturer (manufacturer_name) VALUES('Peugeot');
INSERT INTO manufacturer (manufacturer_name) VALUES('Ford');
INSERT INTO manufacturer (manufacturer_name) VALUES('Toyota');
INSERT INTO manufacturer (manufacturer_name) VALUES('Volvo');

/*INSERT INTO TABLA customer*/
INSERT INTO customer VALUES('10001', 'Pablo Picasso', 21, 'Paseo de la Chopera, 14');
INSERT INTO customer VALUES('20001', 'Abraham Lincoln', 22, 'Paseo de la Chopera, 14');
INSERT INTO customer VALUES('30001', 'Napoléon Bonaparte', 23, 'Paseo de la Chopera, 14');

/*INSERT INTO TABLA salesperson*/
INSERT INTO salesperson VALUES('00001', 'Petey Cruiser', 30, 'Madrid');
INSERT INTO salesperson VALUES('00002', 'Anna Sthesia', 32, 'Barcelona');
INSERT INTO salesperson VALUES('00003', 'Paul Molive',34, 'Berlin');
INSERT INTO salesperson VALUES('00004', 'Gail Forcewind', 36, 'Paris');
INSERT INTO salesperson VALUES('00005', 'Paige Turner', 38, 'Mimia');

/*INSERT INTO TABLA car*/
INSERT INTO car VALUES(4, '3K096I98581DHSNUP', 1, 'Tiguan', '2019-01-01', 'Blue');
INSERT INTO car VALUES(1, 'ZM8G7BEUQZ97IH46V', 1, 'Rifter', '2019-01-01', 'Red');
INSERT INTO car VALUES(2, 'RKXVNNIHLVVZOUB4M', 2, 'Fusion', '2018-01-01', 'White');
INSERT INTO car VALUES(3, 'HKNDGS7CU31E9Z7JW', 2, 'RAV4', '2018-01-01', 'Silver');

