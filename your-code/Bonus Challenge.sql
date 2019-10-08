/*Empieza el Bonus Challenge*/
drop database challenge_3;
create database challenge_3;
show tables;
UPDATE challenge_3_tb2
SET Email='ppicasso@gmail.com' where ID=0;
UPDATE challenge_3_tb2
SET Email='lincoln@us.gov' where ID=1;
UPDATE challenge_3_tb2
SET 
    Email = 'hello@napoleon.me'
WHERE
    ID = 2;
DELETE FROM challenge_3_tb1
WHERE
    D = 5;

SELECT 
    *
FROM
    challenge_3_tb1,
    challenge_3_tb2;

