create table emp
(
eid int primary key not null,
ename varchar(50) not null,
age int check (age>=18),
department varchar(50) not null,
salary decimal check (salary > 0)
);

select*from emp;

create table dept
(
did int primary key not null,
dname varchar(50) not null,
eid int,
constraint FK_did foreign key(eid) references emp(eid)
);


select*from dept

insert into emp values(1,'Ravi',24,'IT',45000);
insert into emp values(11,'Sham',23,'Civil',35000),
                      (111,'Ashish',24,'IT',45000),
					  (1111,'Nilesh',24,'Civil',35000);
insert into dept(did,dname) values (121,'Nitin');

insert into dept values( 122,'Electric',1);

create table employees
(
id int primary key not null,
name varchar(50),
designation varchar(50),
salary decimal
);

select*from employees
insert into employees values(1,'Suraj','Developer',24000);
insert into employees values(2,'Kishor','Developer',23000);
insert into employees values(3,'Sujit','Tester',25000);
insert into employees values(4,'Pooja','Developer',24000);
insert into employees values(5,'Jiten','Tester',26000);

 select * from employees where salary<=24000
 select * from employees where salary>=24000
 
 select * from employees where Salary between 23000 and 25000

update employees set Designation='Networking',salary=25500 where id=1

alter table employees
add city varchar(50);
insert into employees(id,name,designation,salary,city) values(6,'Sonali','Developer',26000,'pune'),
                           (7,'Ravi','Tester',25000,'Mumbai'),
						   (8,'Rakesh','Developer',30000,'Nagpur'),
						   (9,'Rajiv','Tester',20000,'Manali'),
						   (10,'ganesh','Frant End Dev',20000,'pune'),
						   (11,'Sachin','Tester',25000,'pune'),
						   (12,'Mohan','Developer',24000,'Mumbai');
delete from employees where id=5

select distinct city from employees

 select * from employees where city like 'm%'   -- city name 
 select * from employees where city like '%n' --city name end with n
 select * from employees where city like '%n%' -- city where n is present in city name
 select * from employees where city like 'n_____' -- _ specify the any chars
 select * from employees where city like '[pm]%' --city name start with p and m will be show
 select * from employees where city like '[a-m]%'  -- define range start with a end with m
 -----null or Not null------
 select * from employees where city is null
 select * from employees where city is not null
