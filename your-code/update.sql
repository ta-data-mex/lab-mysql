USE sales;

UPDATE customers SET Email = 'ppicasso@gmail.com' WHERE CustomerName = 'Pablo Picasso';
UPDATE customers SET Email = 'lincoln.us.gov' WHERE CustomerName = 'Abraham Lincoln';
UPDATE customers SET Email = 'hello@napoleon.me' WHERE CustomerName = 'Napoleón Bonaparte';

UPDATE stores SET City = 'Miami' WHERE SalesPersonID = 4;