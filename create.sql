USE lab_mysql;

create table Manufacturer (
    -> idManufacturer varchar(50), 
    -> nombreManufacturer varchar(45) primary key
);

create table zip_postal (
    -> zip_postal int primary key
);

create table Store(
    -> idTienda varchar(45), 
    -> nombreSucursal varchar(45)primary key
);

create table Salesperson (
    -> idStaff int primary key,
    -> Nombre varchar(45),
    -> nombreSucursal varchar(45),
    -> foreign key(nombreSucursal) References Store(nombreSucursal)
    -> );

 create table Cars (
    -> VIN varchar(50) primary key,
    -> model varchar(45),
    -> Yeardate year(4),
    -> color varchar(45),
    -> nombreManufacturer varchar(45),
    -> dateAdd date,
    -> foreign key(nombreManufacturer) References Manufacturer(nombreManufacturer)
    -> );

CREATE TABLE Cliente(
    -> idCliente INT primary key,
    -> Nombre VARCHAR(45),
    -> telefono INT(8),
    -> email VARCHAR(45),
    -> calle VARCHAR(45),
    -> ciudad VARCHAR(45),
    -> estadoprovincia VARCHAR(45),
    -> pais VARCHAR(50),
    -> zipcode INT,
    -> idautos VARCHAR(45),
    -> FOREIGN KEY (idautos) REFERENCES Cars(VIN),
    -> FOREIGN KEY (zipcode) REFERENCES zip_postal(zip_postal)
);

CREATE TABLE Invoice( idInvoice INT primary key, 
    -> date DATE, 
    -> idCliente INT, 
    -> idAutos VARCHAR(45), 
    -> idStaff INT, 
    -> FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente), 
    -> FOREIGN KEY (idautos) REFERENCES Cliente(idautos), 
    -> FOREIGN KEY (idStaff) REFERENCES Salesperson(idStaff)
);