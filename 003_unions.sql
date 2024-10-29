
use university;

-- ***************
-- unions
-- ***************

select *
from student;

-- union min fee, max fee, avg fee
select *
from student s
where s.fee = (select min(fee) from student)
union
select *
from student s
where s.fee = (select max(fee) from student)
order by fee;



