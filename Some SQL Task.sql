
CREATE DATABASE ben;
USE ben;
CREATE TABLE benzy(
ID INT auto_increment not null PRIMARY key,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT CHECK (age >= 18),
gender varchar(1),
mobile_no BIGINT unique


)auto_increment=4000;
SELECT * FROM benzy;
INSERT INTO benzy
(first_name,last_name,age,gender,mobile_no)
VALUES
("BENJAMIN"," RAJBAHAK",18,"M",9812345678),

("SAUJAN", "SHRESTHA",19,"M",9881326549),

("SANJAY", "BISTA",27,"M",9814523674),

("RAMESH"," TAMANG",21,"M",9874563217),

("KARAN" ,"BISHWOKARMA",26,"M",9875412563),

("RAM" ,"BISHWOKARMA",25,"O",9875412545),
("SHYAM" ,"BISHWOKARMA",22,"M",9875412571),
("RAM" ,"BISHWOKARMA",27,"O",9875412554),
("SITA" ,"BISHWOKARMA",19,"F",9875412565),
("GEETA" ,"BISHWOKARMA",28,"F",9875412569)


;
select * from benzy where age between 18 and 35 and gender IN('O') ;

delete from benzy where ID=4006;

select * from benzy limit 4;

SELECT first_name FROM benzy ORDER BY age DESC LIMIT 1; 

SELECT COUNT(first_name) FROM benzy;

select min(age) from benzy;

select max(age) from benzy;

select avg(age) from benzy;

select sum(age) from benzy;

select first_name, count(ID)
from benzy
group by first_name;

select first_name, count(ID)
from benzy
group by first_name
having max(age)>20;

select first_name, count(ID) as frequency
from benzy
group by first_name
having max(age)>20;















