use university;

-- *******************************
-- ***WHERE CLAUSE***
-- filter the rows returned by a query (using conditions)
-- *******************************

-- ***************
-- single condition 
-- ***************
select *
from university.student s
where s.gender  = 'F';


-- ***************
-- expression
-- ***************
select 
student_ID,
first_name, 
last_name, 
date_of_birth,
ROUND(DATEDIFF(CURRENT_DATE, date_of_birth) / 365) as age
from university.student
where ROUND(DATEDIFF(CURRENT_DATE, date_of_birth) / 365) < 30
order by age;

-- ***************
-- multiple conditions linked by operators
-- and
-- ***************
select 
student_ID,
first_name, 
last_name, 
date_of_birth
from university.student s
where year(s.date_of_birth) >= 1982
and year(s.date_of_birth) <= 2000
order by date_of_birth; 

-- ***************
-- or
-- ***************
select 
student_ID,
first_name, 
last_name, 
date_of_birth
from university.student s
where year(s.date_of_birth) < 1982
 -- and year(s.date_of_birth) >= 2000;
 or year(s.date_of_birth) > 2000
order by date_of_birth; 

-- ***************
-- IN
-- ***************
select *
from university.student s
where s.fee IN (100, 101, 150);

-- ***************
-- BETWEEN
-- ***************
select *
from university.student s
where s.fee BETWEEN 80 AND 110;
-- where s.fee >= 80 
-- AND s.fee <= 110;

-- ***************
-- LIKE ( % and _ )
-- ***************
select *
from university.student s
-- where s.first_name like 'm%';
-- where s.first_name like 'm___';
where s.first_name like 'm%';
