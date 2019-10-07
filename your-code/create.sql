CREATE DATABASE labmysql_fitness;
USE labmysql_fitness;
CREATE TABLE users
(user_id INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
username varchar(40) not null,
joined date not null,
edad int(3) not null, 
sexo varchar(40),
peso decimal (5,2) not null, 
altura int (3) not null, 
BMI decimal (2,2) not null,
goal varchar(40) not null
);
Create table workout
(workout_id INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
workout varchar(40) not null, 
muscle_group varchar(40), 
focused bool not null, 
goal varchar(40) not null
);
Create table program 
(program_id INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
goal varchar(40) not null, 
sets int(1)not null, 
reps int(2)not null
);
Create table follow_up
(program_id INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
user_id int(5),
period date not null, 
goal varchar(40) not null, 
hit_goal bool not null 
);
-- show tables;

-- Para insertar datos usé el wizard #AlChildren 

select 
u.goal,
w.workout,
p.reps, 
p.sets
from users u
join program p on p.goal = u.goal
join workout w on w.goal = u.goal
where u.username = 'karen';

