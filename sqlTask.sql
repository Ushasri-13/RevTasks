create database emp;
use emp;

create table employees(
emp_id int primary key,
emp_name varchar(25),
dept_id int,
salary int,
hire_date date,
foreign key (dept_id) references departments(dept_id) on delete cascade );

insert into employees values
(1,'Alice',10,60000,'2020-01-15');

insert into employees values
(2,'Bob',20,75000,'2019-03-10'),
(3,'Charlie',10,55000,'2021-06-20'),
(4,'Dave',20,80000,'2018-09-05'),
(5,'Eve',30,50000,'2022-02-10')
;

select * from employees;

create table departments(
dept_id int primary key,
dept_name varchar(25),
location varchar(50));

insert into departments values
(10,'HR','New York'),
(20,'IT','Boston'),
(30,'Finance','Chicago');

select * from departments;

create table projects(
project_id int primary key,
emp_id int,
project_name varchar(50),
start_date date,
foreign key (emp_id) references employees(emp_id) on delete cascade);



insert into projects values
(101,1,'Project A','2023-01-01'),
(102,2,'Project B','2023-02-15'),
(103,1,'Project C','2023-03-10'),
(104,3,'Project D','2023-04-01');

select * from projects;
-- 1
select emp_id  from
(select emp_id, salary,
  avg(salary) over(partition by dept_id) as avg_sal from employees) as sub
  where  salary > avg_sal;
 
 -- 3
select emp_id from employees
where salary in (select  max(salary) from employees
  group by dept_id);
  
  -- list departments where every employee earns more than a specific salary amount.
  
  select dept_id 
  from employees
  group by dept_id
  having min(salary) >= 60000;

  











