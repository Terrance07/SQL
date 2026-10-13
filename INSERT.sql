create database studentdb;
use studentdb;

create table students(
studentid int auto_increment primary key,
firstname varchar(50),
lastname varchar(50),
dob date,
gender varchar(10));

create table courses(
courseid int auto_increment primary key,
coursename varchar(50),
credits int );

create table enrollement(
enrollementid int auto_increment primary key,
studentid int,
courseid int,
enrollementrdate date,
foreign key(studentid) references students(studentid),
foreign key(courseid) references courses(courseid));

INSERT INTO students(firstname, lastname, dob, gender)
VALUES
('Arun', 'Kumar', '2002-05-14', 'Male'),
('Priya', 'Sharma', '2003-08-21', 'Female'),
('Rahul', 'Verma', '2001-11-09', 'Male'),
('Sneha', 'Reddy', '2002-02-17', 'Female'),
('Karthik', 'Rajan', '2000-07-30', 'Male'),
('Divya', 'Nair', '2003-04-12', 'Female'),
('Vijay', 'Krishnan', '2001-09-25', 'Male'),
('Ananya', 'Das', '2002-12-06', 'Female'),
('Suresh', 'Patel', '2000-03-19', 'Male'),
('Meena', 'Joseph', '2003-06-28', 'Female'); 

INSERT INTO courses(coursename, credits)
VALUES
('Python Programming', 4),
('SQL Fundamentals', 3),
('Data Structures', 4),
('Web Development', 3),
('Machine Learning', 4),
('Data Analytics', 3),
('Java Programming', 4),
('Cloud Computing', 3),
('Database Management', 4),
('ETL Development', 3);

INSERT INTO enrollement(studentid, courseid, enrollementrdate)
VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-12'),
(3, 3, '2026-01-15'),
(4, 4, '2026-01-18'),
(5, 5, '2026-01-20'),
(6, 6, '2026-01-22'),
(7, 7, '2026-01-25'),
(8, 8, '2026-01-28'),
(9, 9, '2026-02-01'),
(10, 10, '2026-02-05');

select * from students;
select * from courses;
select * from enrollement;

select firstname, lastname from students;
select courseid, enrollementrdate from enrollement;
