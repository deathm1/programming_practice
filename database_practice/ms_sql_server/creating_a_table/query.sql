create table practice.students(
student_id bigint identity(1,1) primary key,
studnet_name varchar(200) not null,
student_address varchar(200) not null
);

create table practice.courses(
course_id bigint identity(1,1) primary key,
course_name varchar(200) not null,
fk_student_id bigint references practice.students(student_id)
);


-- alter table which does'nt have a foreign key
alter table practice.courses add constraint forkey foreign key (fk_student_id)
references practice.students(student_id);

-- insertion sequence
INSERT INTO [practice].[students]([studnet_name],[student_address]) VALUES ('test','some add2');
INSERT INTO [practice].[students]([studnet_name],[student_address]) VALUES ('test1','some add2');
INSERT INTO [practice].[students]([studnet_name],[student_address]) VALUES ('test2','some add2');

insert into practice.courses(course_name, fk_student_id) values('some course', 1);
insert into practice.courses(course_name, fk_student_id) values('some course1', 1);
insert into practice.courses(course_name, fk_student_id) values('some course2', 1);
insert into practice.courses(course_name, fk_student_id) values('some course', 2);
insert into practice.courses(course_name, fk_student_id) values('some course1', 2);


-- will give an error because this isn't present in the referenced table.
insert into practice.courses(course_name, fk_student_id) values('some course2', 22);