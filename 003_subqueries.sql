use university;

-- ***************
-- in WHERE clause, with comparison operator
-- ***************
select student_ID, first_name, last_name, fee
from student s
where s.fee <= (select avg(fee) from student) -- 155
order by fee;


select student_ID, first_name, last_name, fee
from student s
where s.fee >= (select avg(fee) from student) -- 155
order by fee;

-- ***************
-- IN, NOT IN
-- ***************
select teacher_ID, first_name, last_name, depart_ID
from teacher t
where t.depart_ID in (select depart_ID 
                      from department
					  where name in ('Mathematics','Chemistry', 'Computer Science'));


select teacher_ID, first_name, last_name, depart_ID
from teacher t
where t.depart_ID not in  (select depart_ID from department
                           where name in ('Mathematics','Chemistry', 'Computer Science'));



-- ***************
-- in FROM clause
-- ***************
select * from student;

select sum(max_fee)
from (select max(fee) as max_fee, 
             max(date_of_birth) as date_of_birth,
			 foreign_yn
      from student 
	  group by foreign_yn) f;

-- ***************
-- correlated subquery
-- ***************
select depart_ID, name, faculty_ID
from department d 
where d.faculty_id = (select faculty_id 
				      from faculty f 
                      where f.name in ('Physics', 'Chemistry')
                      and f.faculty_id = d.faculty_id );


-- ***************
-- EXISTS/ NOT EXISTS
-- ***************
select teacher_ID, first_name, last_name, depart_ID
from teacher t 
where EXISTS (select depart_ID
			  from department f 
			  where f.name in ('Mathematics', 'Chemistry')
              and f.depart_ID = t.depart_ID );


select teacher_ID, first_name, last_name, depart_ID
from teacher t 
where NOT  EXISTS (select depart_ID
			       from department f 
			       where f.name in ( 'Mathematics',
									 'Computer Science',
									 'Biomolecular physics',
									 'Solid State Physics')
                   and f.depart_ID = t.depart_ID );
