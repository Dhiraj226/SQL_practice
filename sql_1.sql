create database college;

use college;

create table student(
id INT primary KEY,
name varchar(50),
age int not null);

insert into student values(1,'Dhiraj',21);
insert into student values(2,'Jay',21);

create database if not exists college;
drop database if exists temp;

show databases;

show tables ;
use college;
create table stu(
id int primary key,
marks int );

insert into stu values(1,25);
insert into stu values(2,27);

select * from stu;
show tables;
insert into stu values(3,23);

create database xyz;
use xyz;
create table employee(
id int primary key,
name varchar(50),
salary bigint);

insert into employee values(1,'adam',25000);

insert into employee values(2,'bob',30000);
insert into employee values(3,'casey',40000);
select * from employee;


create database colloge;
use college;


create table students(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(10),
city varchar(50)
);

insert into students values(101,'anil',78,'c','pune');
insert into students values(102,'bhumika',93,'A','mumbai');
insert into students values(103,'chetan',85,'B','mumbai');
insert into students values(104,'dhruv',96,'A','Delhi');
insert into students values(105,'emanuel',12,'F','Delhi');
insert into students values(106,'farah',82,'B','Delhi');

select * from students;

select marks from students;

select distinct city from students;

select marks from students where marks >=85;

select * from students where marks between 85 and 95; 

select * from students where city='Delhi';

select * from students limit 3;

select * from students order by city asc;
select * from students order by marks desc limit 3;

select avg(marks) from students;
select max(marks) from students;
select sum(marks) from students;
select min(marks) from students;

select city,avg(marks) from students group by city;
select city,avg(marks) from students group by city order by avg(marks) desc;

select grade,count(rollno) from students group by grade;

select marks from students where(marks>90);

select city,count(rollno) from students group by city having max(marks)>85;

select city from students ;

select distinct city from students ;

select city from students where grade='A';

select city from students where grade='A' group by city having max(marks)>93;





create database sales;
use sales;
create table info(
customerID int primary key,
name varchar(50),
mode varchar(20),
city varchar(20)
);

insert into info values(101,'Dhiraj','netbanking','pune');
insert into info values(102,'Jay','Credit Card','mumbai');
insert into info values(103,'pritam','Debit card','nashik');
insert into info values(104,'Jayesh','netbanking','nashik');
insert into info values(105,'Sagar','Debit Card','pune');
insert into info values(106,'Mayur','Credit Card','nashik');
insert into info values(107,'kushal','netbanking','mumbai');

select * from info;

select mode ,count('customerID') from info group by mode;
