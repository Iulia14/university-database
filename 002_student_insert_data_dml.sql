use university;

-- ********************************
-- insert faculty
-- ********************************

INSERT INTO `university`.`faculty`
(
`name`,
`rank_`)
VALUES
(
'Mathematics and computer science',
8);


INSERT INTO `university`.`faculty`
(
`name`,
`rank_`)
VALUES
(
'Physics',
17);


INSERT INTO `university`.`faculty`
(
`name`,
`rank_`)
VALUES
(
'Chemistry',
25);


INSERT INTO `university`.`faculty`
(
`name`,
`rank_`)
VALUES
(
'Biology',
9);


INSERT INTO `university`.`faculty`
(
`name`,
`rank_`)
VALUES
(
'Geography',
27);

commit;


-- ********************************
-- insert department
-- ********************************

INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Mathematics',
(select faculty_ID from faculty where name = 'Mathematics and computer science'));

INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Computer Science',
(select faculty_ID from faculty where name = 'Mathematics and computer science'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Biomolecular physics',
(select faculty_ID from faculty where name = 'Physics'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Solid State Physics',
(select faculty_ID from faculty where name = 'Physics'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Chemistry',
(select faculty_ID from faculty where name = 'Chemistry'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Chemical Engineering',
(select faculty_ID from faculty where name = 'Chemistry'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Molecular Biology',
(select faculty_ID from faculty where name = 'Biology'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Taxonomy and Ecology',
(select faculty_ID from faculty where name = 'Biology'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Geography and Territorial Planning',
(select faculty_ID from faculty where name = 'Geography'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Human Geology and Turism',
(select faculty_ID from faculty where name = 'Geography'));


INSERT INTO `university`.`department`
(
`name`,
`faculty_ID`)
VALUES
(
'Physical and Technical Geography',
(select faculty_ID from faculty where name = 'Geography'));

commit;


-- ********************************
-- insert teacher
-- ********************************

INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Sophia',
'Rees',
(select depart_ID from department where name = 'Mathematics'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Franklin',
'Stone',
(select depart_ID from department where name = 'Computer Science'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Liliana',
'Day',
(select depart_ID from department where name = 'Computer Science'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Brian',
'Thomas',
(select depart_ID from department where name = 'Biomolecular physics'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Emelia',
'Young',
(select depart_ID from department where name = 'Solid State Physics'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Rosalie',
'Gordon',
(select depart_ID from department where name = 'Chemistry'));

INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Romeo',
'Matthews',
(select depart_ID from department where name = 'Chemical Engineering'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Orion',
'Baxter',
(select depart_ID from department where name = 'Molecular Biology'));

INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Grace',
'Murray',
(select depart_ID from department where name = 'Taxonomy and Ecology'));

INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Katie',
'Barnes',
(select depart_ID from department where name = 'Geography and Territorial Planning'));


INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Leah',
'Grant',
(select depart_ID from department where name = 'Human Geology and Turism'));



INSERT INTO `university`.`teacher`
(
`first_name`,
`last_name`,
`depart_ID`)
VALUES
(
'Sienna',
'Harris',
(select depart_ID from department where name = 'Physical and Technical Geography'));

commit;


-- ********************************
-- insert course
-- ********************************

INSERT INTO `university`.`course`
( 
`name`,
`teacher_ID`)
VALUES
('Theory of modules',
(select teacher_ID from teacher t 
where t.first_name = 'Sophia' and  t.last_name = 'Rees'
and depart_ID = (select depart_ID from department d where d.name = 'Mathematics'))
);


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Homological algebra',
(select teacher_ID from teacher t 
where t.first_name = 'Sophia' and  t.last_name = 'Rees'
and depart_ID = (select depart_ID from department d where d.name = 'Mathematics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Linear algebra',
(select teacher_ID from teacher t 
where t.first_name = 'Sophia' and  t.last_name = 'Rees'
and depart_ID = (select depart_ID from department d where d.name = 'Mathematics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Artificial intelligence',
(select teacher_ID from teacher t 
where t.first_name = 'Franklin' and  t.last_name = 'Stone'
and depart_ID = (select depart_ID from department d where d.name = 'Computer Science'))
);

INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Data Mining',
(select teacher_ID from teacher t 
where t.first_name = 'Franklin' and  t.last_name = 'Stone'
and depart_ID = (select depart_ID from department d where d.name = 'Computer Science')));

INSERT INTO `university`.`course`
(`name`,
`teacher_ID`)
VALUES
('Complex networks',
(select teacher_ID from teacher t 
where t.first_name = 'Liliana' and  t.last_name = 'Day'
and depart_ID = (select depart_ID from department d where d.name = 'Computer Science'))
);


INSERT INTO `university`.`course`
(`name`,
`teacher_ID`)
VALUES
('Computer networks',
(select teacher_ID from teacher t 
where t.first_name = 'Liliana' and  t.last_name = 'Day'
and depart_ID = (select depart_ID from department d where d.name = 'Computer Science'))
);


INSERT INTO `university`.`course`
(`name`,
`teacher_ID`)
VALUES
('Cyber ​​security',
(select teacher_ID from teacher t 
where t.first_name = 'Liliana' and  t.last_name = 'Day'
and depart_ID = (select depart_ID from department d where d.name = 'Computer Science'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Optometry and optical microscopy',
(select teacher_ID from teacher t 
where t.first_name = 'Brian' and  t.last_name = 'Thomas'
and depart_ID = (select depart_ID from department d where d.name = 'Biomolecular physics'))
); 

INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Molecular and cellular biophysics',
(select teacher_ID from teacher t 
where t.first_name = 'Brian' and  t.last_name = 'Thomas'
and depart_ID = (select depart_ID from department d where d.name = 'Biomolecular physics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Photons, electrons, neutrons in physics',
(select teacher_ID from teacher t 
where t.first_name = 'Emelia' and  t.last_name = 'Young'
and depart_ID = (select depart_ID from department d where d.name = 'Solid State Physics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Material resistance',
(select teacher_ID from teacher t 
where t.first_name = 'Emelia' and  t.last_name = 'Young'
and depart_ID = (select depart_ID from department d where d.name = 'Solid State Physics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Thermodynamics and heat',
(select teacher_ID from teacher t 
where t.first_name = 'Emelia' and  t.last_name = 'Young'
and depart_ID = (select depart_ID from department d where d.name = 'Solid State Physics'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('The basics of analytical chemistry',
(select teacher_ID from teacher t 
where t.first_name = 'Rosalie' and  t.last_name = 'Gordon'
and depart_ID = (select depart_ID from department d where d.name = 'Chemistry'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Advanced analytical chemistry',
(select teacher_ID from teacher t 
where t.first_name = 'Rosalie' and  t.last_name = 'Gordon'
and depart_ID = (select depart_ID from department d where d.name = 'Chemistry'))); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Electroanalytical chemistry',
(select teacher_ID from teacher t 
where t.first_name = 'Romeo' and  t.last_name = 'Matthews'
and depart_ID = (select depart_ID from department d where d.name = 'Chemical Engineering'))
); 

INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Chemical reaction engineering',
(select teacher_ID from teacher t 
where t.first_name = 'Romeo' and  t.last_name = 'Matthews'
and depart_ID = (select depart_ID from department d where d.name = 'Chemical Engineering'))); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Molecular Biology',
(select teacher_ID from teacher t 
where t.first_name = 'Orion' and  t.last_name = 'Baxter'
and depart_ID = (select depart_ID from department d where d.name = 'Biology'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Taxonomy and Ecology',
(select teacher_ID from teacher t 
where t.first_name = 'Grace' and  t.last_name = 'Murray'
and depart_ID = (select depart_ID from department d where d.name = 'Biology'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Geography and Territorial Planning',
(select teacher_ID from teacher t 
where t.first_name = 'Katie' and  t.last_name = 'Barnes'
and depart_ID = (select depart_ID from department d where d.name = 'Geography'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Human Geology and Turism',
(select teacher_ID from teacher t 
where t.first_name = 'Leah' and  t.last_name = 'Grant'
and depart_ID = (select depart_ID from department d where d.name = 'Geography'))
); 


INSERT INTO `university`.`course`
( `name`,
`teacher_ID`)
VALUES
('Physical and Technical Geography',
(select teacher_ID from teacher t 
where t.first_name = 'Sienna' and  t.last_name = 'Harris'
and depart_ID = (select depart_ID from department d where d.name = 'Geography'))
); 

commit;

-- ********************************
-- insert student
-- ********************************

INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('123456789',
'Eves',
'Lewi',
100,
date(date_sub(date_sub(now(), interval 37 day), interval 33 year)),
concat(first_name, last_name, '@abcd.com'),
'F',
'Y');


INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('106756789',
'Martin',
'Khan',
100,
date(date_sub(date_add(now(), interval 38 day), interval 29 year)),
concat(first_name, last_name, '@abcd.com'),
'M',
'N');

INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('136746718',
'Issac',
'Wells',
150,
date(date_sub(date_add(now(), interval 65 day), interval 17 year)),
concat(first_name, last_name, '@abcd.com'),
'M',
'N');


INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('176546732',
'Michael',
'Davidson',
200,
date(date_sub(date_add(now(), interval 95 day), interval 47 year)),
concat(first_name, last_name, '@abcd.com'),
'M',
'N');


INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('166346720',
'Elsa',
'Allen',
200,
date(date_sub(date_add(now(), interval 24 day), interval 31 year)),
concat(first_name, last_name, '@abcd.com'),
'F',
'Y');

commit;

INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('112846718',
'Juliet',
'Chandler',
150,
date(date_sub(date_add(now(), interval 74 day), interval 42 year)),
concat(first_name, last_name, '@abcd.com'),
'F',
'Y');

commit;
 
INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('128216789',
'Chris',
'Webster',
100,
date(date_sub(date_add(now(), interval 34 day), interval 52 year)),
concat(first_name, last_name, '@abcd.com'),
'M',
'N');

commit;

INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('132216178',
'Josephine',
'Palmer',
200,
date(date_sub(date_add(now(), interval 68 day), interval 27 year)),
concat(first_name, last_name, '@abcd.com'),
'F',
'N');

commit;


INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('123116111',
'Mike',
'Harris',
150,
date(date_sub(date_add(now(), interval 20 day), interval 30 year)),
concat(first_name, last_name, '@abcd.com'),
'M',
'N');

commit;


INSERT INTO `university`.`student`
(`SSN`,
`first_name`,
`last_name`,
`fee`,
`date_of_birth`,
`email`,
`gender`,
`foreign_yn`)
VALUES
('132616178',
'Ella',
'Doyle',
200,
date(date_sub(date_add(now(), interval 51 day), interval 21 year)),
concat(first_name, last_name, '@abcd.com'),
'F',
'N');

commit;



-- ********************************
-- insert enrollment
-- ********************************

INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 123456789),
(select course_ID from course where name = 'Theory of modules'),
date_sub(now(), interval 51 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 123456789),
(select course_ID from course where name = 'Linear algebra'),
date_sub(now(), interval 27 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 106756789),
(select course_ID from course where name = 'Linear algebra'),
date_sub(now(), interval 45 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 106756789),
(select course_ID from course where name = 'Homological algebra'),
date_sub(now(), interval 37 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 106756789),
(select course_ID from course where name = 'Theory of modules'),
date_sub(now(), interval 73 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 136746718),
(select course_ID from course where name = 'Artificial intelligence'),
date_sub(now(), interval 11 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 136746718),
(select course_ID from course where name = 'Computer networks'),
date_sub(now(), interval 22 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 176546732),
(select course_ID from course where name = 'Optometry and optical microscopy'),
date_sub(now(), interval 27 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 176546732),
(select course_ID from course where name = 'Molecular and cellular biophysics'),
date_sub(now(), interval 27 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 166346720),
(select course_ID from course where name = 'Material resistance'),
date_sub(now(), interval 45 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 166346720),
(select course_ID from course where name = 'Thermodynamics and heat'),
date_sub(now(), interval 43 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 112846718),
(select course_ID from course where name = 'Data Mining'),
date_sub(now(), interval 26 day) 
);



INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 112846718),
(select course_ID from course where name = 'Cyber ​​security'),
date_sub(now(), interval 77 day) 
);

INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 128216789),
(select course_ID from course where name = 'Artificial intelligence'),
date_sub(now(), interval 23 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 128216789),
(select course_ID from course where name = 'Complex networks'),
date_sub(now(), interval 23 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 132216178),
(select course_ID from course where name = 'Electroanalytical chemistry'),
date_sub(now(), interval 43 day) 
);

INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 132216178),
(select course_ID from course where name = 'Chemical reaction engineeringy'),
date_sub(now(), interval 38 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 123116111),
(select course_ID from course where name = 'The basics of analytical chemistry'),
date_sub(now(), interval 10 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 123116111),
(select course_ID from course where name = 'Advanced analytical chemistry'),
date_sub(now(), interval 33 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 132616178),
(select course_ID from course where name = 'Material resistance'),
date_sub(now(), interval 32 day) 
);


INSERT INTO `university`.`enrollment`
(`student_ID`,
`course_ID`,
`enrollment_date`)
VALUES
(
(select student_ID from student where SSN = 132616178),
(select course_ID from course where name = 'Thermodynamics and heat'),
date_sub(now(), interval 27 day) 
);


commit;


-- ********************************
-- insert address
-- ********************************
INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(1,
'United States',
'Lancashire',
'Manchester',
55748,
'Harrison Island',
27,
4,
15);

INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(2,
'United Kingdom',
'Robinsonberg',
'Peter Row',
37829,
'Williams Wells',
54,
6,
8);

INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(3,
'United States',
'Yorkshire',
'Leeds',
356778,
'Jackson Ville',
26,
4,
24);

INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(4,
'United Kingdom',
'Perthshire',
'Perth',
2367856,
'Edwards Forges',
11,
32,
15);

INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(5,
'United Kingdom',
'Yorkshire',
'Sheffield',
32333,
'Ryan Lodge',
25,
11,
4);


INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(6,
'United States',
'Yorkshire',
'New Leemouth',
63365,
'134 Parker Shoal',
24,
4,
47);

INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(7,
'United Kingdom',
'Rochester',
'North Jasonmouth',
75432,
'Francesca Rue',
56,
7,
31);


INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(8,
'United States',
'Rochester',
'Gregton',
74376,
'Watson Wellse',
124,
8,
26);


INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(9,
'United Kingdom',
'Rochester',
'Daleport',
63478,
'Young Vista',
32,
3,
27);


INSERT INTO `university`.`address`
(`address_ID`,
`state`,
`county`,
`city`,
`zip_code`,
`street_name`,
`street_no`,
`floor_no`,
`ap_no`)
VALUES
(10,
'United Kingdom',
'Perthshire',
'New Olivia',
54313,
'Stewart Points',
26,
7,
57);


commit;



-- ********************************
-- insert address
-- ********************************
INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 123456789),
1);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 106756789),
1);

INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 136746718),
2);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 176546732),
3);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 166346720),
3);

INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 112846718),
3);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 128216789),
4);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 132216178),
5);

INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 123116111),
6);


INSERT INTO `university`.`student_address`
(`student_ID`,
`address_ID`)
VALUES
((select student_ID from student where SSN = 132616178),
7);


commit;




