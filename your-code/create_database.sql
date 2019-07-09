create table coches (id int primary key, nombre varchar(50), marca varchar(20), color varchar(20), modelo int, HP int);
create table clientes (id int primary key, nombre varchar(75), telefono int, calle varchar (100), colonia varchar (25), ciudad varchar(100));
create table vendedores (id int primary key, ranking int, nombre varchar(75));
create table facturas (id int primary key, coche varchar (50), vendedor varchar(75), precio int, comprador varchar(75), fecha date);


