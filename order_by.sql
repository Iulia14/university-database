-- *******************************
-- ***ORDER BY***
-- *******************************

use university;

-- ***************
-- where + order by
-- ***************
select *
from student s
where  year(s.date_of_birth) < 2000
order by date_of_birth;

-- ***************
-- asc
-- ***************
select first_name,
last_name,
date_of_birth 
from student s
order by date_of_birth;

-- ***************
-- desc
-- ***************
select first_name,
last_name,
date_of_birth 
from university.student s
order by date_of_birth desc;

-- ***************
-- multiple columns
-- ***************
select first_name,
last_name,
date_of_birth,
gender
from university.student s
where  year(s.date_of_birth) < 2000
order by gender desc, date_of_birth;

-- ***************
-- using column aliases
-- ***************
select first_name,
last_name,
date_of_birth as birthday
from university.student s
order by birthday desc;

-- ***************
-- using column position
-- ***************
select first_name,
last_name,
date_of_birth
from university.student s
order by 3 desc;
