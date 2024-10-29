
-- *******************************
/*
-- ***SELECT***
-- select statement is used to retrieve rows from tables
-- the query output is called result set
-- the queries can be used with following clauses:
         *where conditions to filter the records 
         *order by to order the records
         *group by to group the similar records
         *limit to limit or specify the number of the records
*/
-- *******************************

-- ***************
-- retrieve all table rows
-- ***************
select *
from university.student;

-- ***************
-- specify columns and aliases
-- ***************
select first_name as 'First Name', 
last_name as 'Last Name', 
date_of_birth as 'Date Of Birth' 
from university.student;


-- ***************
-- expression
-- ***************
select first_name, 
last_name, 
date_of_birth,
ROUND(DATEDIFF(CURRENT_DATE, date_of_birth) / 365) as age
from university.student;

-- ***************
-- distinct - returns all unique values from a column(s) and remove the duplicates
-- ***************
select distinct foreign_yn
from university.student;

select distinct first_name, foreign_yn
from university.student;


