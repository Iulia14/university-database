-- *******************************
-- ***LIMIT***
-- LIMIT clause allow us to restrict the number of rows returned by the SELECT statement
-- *******************************

-- ***************
-- first 5 rows
-- ***************
select *
from university.student s;
-- limit 5;


-- ***************
-- limit 4,3 -> 4 (the offset of the first row) and 3 (number of rows returned)
-- ***************
select *
from university.student s
limit 4,3;

-- ***************
-- limit and order by
-- ***************
select *
from university.student s
order by s.first_name
limit 5;

-- ***************
-- limit and group by
-- ***************
select fee, 
count(*) as students_count
from university.student s
group by fee
limit 2;






