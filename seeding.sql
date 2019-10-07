INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) values("012345678","Volkswagen","Vento","2006","plata");
INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) 
                    values("012325678","Volkswagen","Beetle","2008","rojo");
INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) 
                    values("012787678","Toyota","Corolla","2010","blanco");
INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) 
                    values("014245678","Toyota","Yaris","2008","plata");
INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) 
                    values("012342348","Nissan","March","2016","azul");
INSERT INTO lab_mysql.Cars(VIN,manufacturer,model,year,color) 
                    values("01212348","Nissan","Versa","2008","negro");


INSERT INTO lab_mysql.Customers (customerID,name,phone,email,address,city) 
                    values("10001","Roberto","5512345674","correo1@gmail.com","Calle Equis, 1","Mexico");
INSERT INTO lab_mysql.Customers (customerID,name,phone,email,address,city) 
                    values("32000","Laura","5512345677","correo3@gmail.com","Calle Equis, 3","Mexico");
INSERT INTO lab_mysql.Customers (customerID,name,phone,email,address,city) 
                    values("20003","Carlos","5512345678","correo2@gmail.com","Calle Equis, 2","Mexico");


INSERT INTO lab_mysql.Salespersons (staffID,name,store) 
                    values("001","Roberto","Toluca");
INSERT INTO lab_mysql.Salespersons (staffID,name,store) 
                    values("002","Hernan","Mexico");
INSERT INTO lab_mysql.Salespersons (staffID,name,store) 
                    values("003","Camilo","Queretaro");
INSERT INTO lab_mysql.Salespersons (staffID,name,store) 
                    values("004","Jose","Guadalajara");
INSERT INTO lab_mysql.Salespersons (staffID,name,store) 
                    values("005","Rodolfo","Mexico");


INSERT INTO lab_mysql.Invoices (invoice_number,invoice_date,car_id,customer_id,salesperson_id) 
                    values("789451","2015-04-02","1","2","1");
INSERT INTO lab_mysql.Invoices (invoice_number,invoice_date,car_id,customer_id,salesperson_id) 
                    values("561234","2009-06-01","2","3","2");
INSERT INTO lab_mysql.Invoices (invoice_number,invoice_date,car_id,customer_id,salesperson_id) 
                    values("124578","2006-12-02","3","1","3");
INSERT INTO lab_mysql.Invoices (invoice_number,invoice_date,car_id,customer_id,salesperson_id) 
                    values("258495","2019-08-12","4","3","4");
INSERT INTO lab_mysql.Invoices (invoice_number,invoice_date,car_id,customer_id,salesperson_id) 
                    values("452123","2011-01-26","5","2","5");