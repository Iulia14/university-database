use university;

-- ***************
-- inner join
-- ***************
select *
from department;

select *
from teacher;

select teacher_ID, first_name, last_name, d.depart_ID, name as depart_name
from teacher t
inner join department d
on d.depart_ID = t.depart_ID;


-- ***************
-- left join
-- ***************
select teacher_ID, first_name, last_name, d.depart_ID, name as depart_name
from teacher t
left join department d
on d.depart_ID = t.depart_ID;


-- ***************
-- right join
-- ***************
select teacher_ID, first_name, last_name, d.depart_ID, name as depart_name
from teacher t
right join department d
on d.depart_ID = t.depart_ID;

