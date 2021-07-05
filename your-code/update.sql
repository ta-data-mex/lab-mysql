USE lab_mysql;
-- 3.- Customer Information
UPDATE customers_information
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers_information
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers_information
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

SELECT * FROM customers_information;