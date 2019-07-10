USE salespersons;
UPDATE salespersons
SET 
    store = 'Miami'
WHERE
    staff_id = 00005;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE name_customer = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln.us.gov' WHERE name_customer = 'Abraham Lincoln';
UPDATE customers SET email = 'hello@napoleon.me' WHERE name_customer = 'Napoleón Bonaparte';