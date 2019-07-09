USE lab_mysql;

UPDATE Salespersons 
SET 
    store = 'Miami'
WHERE
    Staff_ID = 00005;
    
UPDATE Customers SET Email = 'ppicasso@gmail.com' WHERE CUSTOMERID = 10001;

UPDATE Customers SET Email = 'lincoln@us.gov' WHERE CUSTOMERID = 20001;

UPDATE Customers SET Email = 'hello@napoleon.me' WHERE CUSTOMERID = 30001;