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
