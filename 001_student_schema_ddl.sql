
-- drop database university;

-- ********CREATE DATABASE*******************
create database university;
use university;


-- ********CREATE TABLES*******************


-- ********student*************************
create table student (
student_ID int not null auto_increment,
SSN int not null,
first_name varchar(30),
last_name varchar(30),
fee int,
date_of_birth date,
email varchar(50),
gender varchar(1),
foreign_yn varchar(1),
constraint pk_student_ID primary key (student_ID)
);

-- indexes
create unique index ind_SSN
on student(SSN);

create index ind_date_of_birth
on student(date_of_birth);

-- integrity check constraints
alter table student
       add check (gender IN ('F', 'M'));

-- integrity check constraints
alter table student
       add check (foreign_yn IN ('Y', 'N'));
       
alter table student
       add check (length(SSN) = 9);
       
       
-- ********address*******************************
create table address(
address_ID int not null auto_increment,
state varchar(30),
county varchar(30),
city varchar(30),
zip_code int,
street_name varchar(30),
street_no tinyint,
floor_no tinyint,
ap_no tinyint,
constraint pk_address_ID primary key  (address_ID)
);

-- unique
alter table address 
add constraint uk_zip_code unique (zip_code);

-- indexes
create index street_name_no
on address(street_name, street_no);



-- ********student_address*******************************
create table student_address(
student_ID int,
address_ID int);


-- foreign keys
alter table student_address 
add constraint fk_std_addr_student foreign key (student_ID) references student(student_ID);

alter table student_address 
add constraint fk_std_addr_address foreign key (address_ID) references address(address_ID);




-- ********faculty*********************
create table faculty(
faculty_ID int not null auto_increment,
name varchar(50),
rank_ int,
constraint pk_faculty_ID primary key (faculty_ID)
);


-- ********department**********************
create table department(
depart_ID int not null auto_increment,
name varchar(50),
faculty_ID int,
constraint pk_depart_ID primary key (depart_ID)
);

-- foreign keys
alter table department 
add constraint fk_faculty_ID foreign key (faculty_ID) references faculty(faculty_ID);



-- ********teacher************************
create table teacher(
teacher_ID int not null auto_increment,
first_name varchar(30),
last_name varchar(30),
depart_ID int,
constraint pk_teacher_ID primary key (teacher_ID)
);

-- foreign keys
alter table teacher 
add constraint fk_teacher_depart_ID foreign key (depart_ID) references department(depart_ID);



-- ********course********************
create table course(
course_ID int not null auto_increment,
name varchar(100),
teacher_ID int,
constraint pk_course_ID primary key (course_ID)
);

-- foreign keys
alter table course 
add constraint fk_course_teacher_ID foreign key (teacher_ID) references teacher(teacher_ID);


-- ********enrollment********************
create table enrollment(
student_ID int,
course_ID int,
enrollment_date datetime 
);

-- foreign keys
alter table enrollment 
add constraint fk_enroll_stud_ID foreign key (student_ID) references student(student_ID);

alter table enrollment 
add constraint fk_enroll_course_ID foreign key (course_ID) references course(course_ID);

