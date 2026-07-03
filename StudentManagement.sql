create database StudentDB;
use StudentDB;

create table Student(id int primary key auto_increment, name varchar(100) not null, email varchar(100) not null, course varchar(100) not null);

insert into Student(name, email, course) values("Prasad", "prasad31@gmail.com", "Java Full Stack"),("Siddhu","siddhi10@gmail.com","MERN Stack");

select * from Student;