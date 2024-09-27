create database employee;


use employee;

create table employees(
id int primary key,
name varchar(20),
age int not null check (age>=18),
salary bigint,
city varchar(20));

insert into employees values(1,'mohan',20,25000,'mumbai');
insert into employees values(2,'sohan',19,19000,'nashik');
insert into employees values(3,'farhan',20,35000,'mumbai');
insert into employees values(4,'bappu',23,35000,'nashik');
insert into employees values(5,'apappa',22,30000,'pune');
insert into employees values(6,'rohan',21,35000,'pune');
insert into employees values(7,'lakham',18,16000,'nashik');

select * from employees;

select * from employees where salary>25000;

select * from employees where city not in ('mumbai'); 
 
select * from employees where salary>25000 limit 3;
 
select * from employees order by salary desc;

select city ,avg(salary) from employees group by city order by city desc ;

select city ,avg(salary) from employees group by city having avg(salary)>30000;

update employees set salary=20000 where salary<=20000;

set sql_safe_updates=0;

select * from employees;

delete from employees where salary <20000;

select * from emp;

alter table employees add column experience int;

alter table employees drop column experience;

alter table employees rename emp;

alter table emp change column id emp_id int;

alter table emp modify name varchar(20) unique;


create table dept(
dept_id int primary key,
sub_name varchar(50));

insert into dept values(101,'Science');
insert into dept values(102,'English');
insert into dept values(103,'Hindi');
insert into dept values(104,'History');
select * from dept;

create table teachers(
teacher_id int not null,
name varchar(50),
dpt_id int,
foreign key (dpt_id) references dept(dept_id)
on update cascade
on delete cascade
);


insert into teachers values(3,'bappu',103);
insert into teachers values(4,'bob',102);
insert into teachers values(7,'satpal',101);
insert into teachers values(8,'gujmal',104);
select * from teachers;

delete from dept where dept_id=104;

create table stds(
rollno int primary key,
name varchar(20),
garde int not null,
marks int not null
);

alter table stds change garde grade varchar(20);
select * from stds;

insert into stds values(1,'ganesh','A',95);
insert into stds values(2,'bupesh','B',89);
insert into stds values(3,'lokesh','B',85);
insert into stds values(4,'bappu','D',67);
insert into stds values(5,'suresh','A',93);

alter table stds change name full_name varchar(20);

delete from stds where marks<=80;

alter table stds drop column grade;


create table tb1(
id int primary key,
name varchar(20));
insert into tb1 values(1,'sonu');
insert into tb1 values(2,'monu');
insert into tb1 values(3,'golu');

select * from tb1;

create table tb2(
id int,
salary int);
insert into tb2 values(2,2000);
insert into tb2 values(3,2500);
insert into tb2 values(4,3000);

select * from tb2;

select * from tb1 inner join tb2 on tb1.id=tb2.id;

select * from tb1 left join tb2 on tb1.id=tb2.id;

select * from tb1 right join tb2 on tb1.id=tb2.id;

select * from tb1 left join tb2 on tb1.id=tb2.id
union
select * from tb1 right join tb2 on tb1.id=tb2.id;


select * from tb1 left join tb2 on tb1.id=tb2.id 
where tb2.id is null ;

select * from tb1 right join tb2 on tb1.id=tb2.id 
where tb1.id is null ;
