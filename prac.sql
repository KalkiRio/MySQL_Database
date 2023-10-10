select * from student;
update student set dob='2001-09-03' where id=4; 
show tables;
select * from country order by name asc;  -- order by is used to arrange the data and asc is used for ascending order.
use sakila;
select * from actor;
use rio;
select * from student;

create table student_marks as 
select id,first_name,last_name 
from student; -- creating a new table using an existing table by selecting columns from existing table 

select * from student_marks;

alter table student_marks add (sub1_marks int(3),
sub2_marks int(3),sub3_marks int(3));

alter table student_marks add(sub4_marks int(3)); -- alter table can alter the table column and add is used to add a new field/column

set sql_safe_updates=1;  -- setting safe updates on andoff for updation of table 1 is on and 0 is off

update student_marks set sub1_marks=54 where id=6;  -- used to update the data in a column
select count(id),first_name from student_marks group by first_name; -- count is used to count the amt of specified column records by default it is set to 1
select id,first_name,sub2_marks from student_marks where sub1_marks in (100,89); -- in is used to select details with the things specified in parenthesis

alter table student_marks modify sub4_marks int(3) default 0;  -- default is used to set default value to something.

describe student_marks; -- used to describe the table details like the datatype for each column keys etc.
select*from student_marks order by sub1_marks desc limit 3; -- limits the data to first specified rows which is 3 here soit shows first 3 rows
select avg(sub1_marks) as class_average from student_marks; -- avg aggregate function gives the average of the column

select avg(sub1_marks),city
from student_marks
group by city
order by avg(sub1_marks) desc; -- groups on basis of selection

select*from stud_marks;
select count(first_name),city
from student_marks
group by city
having max(sub1_marks)>90
order by city desc; 

alter table student_marks 
change column id st_id int(3); -- change column was used to change the column name syntax:  alter table table_name change column old_name new_name datatype constraint; 

alter table student_marks
rename to stud_marks; -- rename here is used to rename the table

select s.id, concat(sm.first_name,' ',sm.last_name) as full_name, sm.city,sm.sub1_marks, sm.sub2_marks, sm.sub3_marks, sm.sub4_marks 
from stud_marks sm
join student s
on sm.st_id = s.id ; -- joining of two different tables with sm and s as alias for table student and stud_marks

select * 
from student s
inner join stud_marks sm
on s.id = sm.st_id;

create view student_details as
    select id,first_name,last_name
    from student; -- creates a view where selected fields from existing tables are stored

show tables;
select* from student_details;
drop view student_details;

create temporary table temp as -- temp tables can not only use exixting tables but also create sample tables with fields.
select *
from stud_marks; -- creates a temporary tables which cannot be seen using show tables command as it only shows permanent tables temp table is created for the ongoing session a temp table can have same name as a permanent table

drop temporary table temp;

alter table student modify course varchar(20) default 'Undecided'; -- this will have a default value undecided in the column course

update student
set first_name='alluka',last_name='zoldyk'
where first_name='illumi';

select id,upper(concat(first_name,' ',last_name)) as full_name,course from student where not course='undecided'; -- upper is used for upper case conversion


-- next section starts full on db practice on company ......................................................................
-- .........................................creating and inserting data into tables........................................................


create table employee ( emp_id int primary key,
first_name varchar(25),last_name varchar(25),birth_date date,sex char (1),salary float,super_id int, branch_id int);

create table branch ( branch_id int primary key,
branch_name varchar(25),mgr_id int, mgr_start_date date);

create table client ( client_id int primary key,
client_name varchar(25),branch_id int);

create table works_with ( emp_id int,client_id int,total_sales float,
primary key (emp_id,client_id));

create table branch_supplier ( branch_id int ,
supplier_name varchar(25),supply_type varchar(20),
primary key(branch_id,supplier_name));

insert into employee values(100,'David','wallace','1967-11-17','m',250000,null,1),
(101,'Jan','levinson','1961-05-11','f',110000,100,1),
(102,'michael','scott','1964-03-15','m',75000,100,2),
(103,'angela','martin','1971-06-25','f',63000,102,2),
(104,'kelly','kapoor','1980-02-05','f',55000,102,2),
(105,'stanley','hudson','1958-02-19','m',69000,102,2),
(106,'josh','porter','1969-09-05','m',78000,100,3),
(107,'andy','bernard','1973-07-22','m',65000,106,3),
(108,'jim','halpert','1978-10-01','m',71000,106,3);

insert into branch values(1,'corporate',100,'2006-02-09'),
(2,'scranton',102,'1992-04-06'),
(3,'stamford',106,'1998-02-13');

insert into client values(400,'dunmore highschool',2),
(401,'lakawana country',2),
(402,'fedex',3),
(403,'john daly law. llc',3),
(404,'scranton whitepages',2),
(405,'times newspaper',3),
(406,'fedex',2);

insert into works_with values(105,400,55000) ,
(102,401,267000),
(108,402,22500),
(107,403,5000),
(108,403,12000),
(105,404,33000),
(107,405,26000),
(102,406,15000),
(105,406,130000);

insert into branch_supplier values(2,'hammer mill','paper'),
(2,'uni ball','writing utensils'),
(3,'patriot paper','paper'),
(2,'jt forms & labels','custom forms'),
(3,'uni ball','writing utensils'),
(3,'hammer mill','paper'),
(3,'stamford labels','custom forms');

-- ................................................. alter table add foreign key.....................................................

alter table client add foreign key(branch_id) references branch(branch_id) on delete set null;

set foreign_key_checks=1; -- used to enable and disable foreign key checks 

alter table employee add foreign key(super_id) references employee(emp_id) on delete set null;
alter table employee add foreign key(branch_id) references branch(branch_id) on delete set null;
alter table branch add foreign key(mgr_id) references employee(emp_id) on delete set null;
alter table works_with add foreign key(client_id) references client(client_id) on delete cascade;
alter table works_with add foreign key(emp_id) references employee(emp_id) on delete cascade;
alter table branch_supplier add foreign key(branch_id) references branch(branch_id) on delete cascade;

-- .................................................order by and limit..........................................................................

select *  from employee
order by sex, first_name, last_name;
select * from employee limit 5;
select first_name as forename ,last_name as surname from employee;

-- ..............................................................functions count(),sum().........................................................

select count(sex),sex from employee
group by sex; -- no of females and males

select sum(total_sales),emp_id
from works_with
group by emp_id;

-- ...................................................................like............................................................

select client_id from client
where client_name like '%llc';

-- ............................................................union............................................................

select first_name from employee
union
select branch_name from branch; -- makes one column with all the data from first_name and branch_name (the union works on column with same data type

select salary as money_used from employee
union
select total_sales from works_with;

insert into branch (branch_id,branch_name) values(4,'Buffalo');

-- .....................................................joins...........................................................

select e.emp_id,e.first_name,b.branch_name
from employee e
join branch b
on e.emp_id = b.mgr_id;  -- by default join is set to inner join which gets all the rows that are common by the condition (on e.emp_id = b.mgr_id)

select e.emp_id,e.first_name,b.branch_name
from employee e
left join branch b
on e.emp_id = b.mgr_id; -- left join includes all of the rows from the left table but only the rows that satisfy condition will be included from another table

select e.emp_id,e.first_name,b.branch_name
from employee e
join branch b
on e.emp_id = b.mgr_id; -- right join includes all of the rows from the right table but only the rows that satisfy condition will be included from another table

-- ....................................................nested queries.......................................................
-- Q. Find names of all employees who have sold over 30000 to a single client

select concat(e.first_name,' ',e.last_name) as name 
from employee e
where e.emp_id in(
         select emp_id from works_with
         where total_sales > 30000);
         
-- Q. find all clients who are handled by the branch that michael scott manages assuming to know his id
-- sol1:
select c.client_id,c.client_name from client c
where c.branch_id in(
         select b.branch_id from branch b
		 join employee e
         on b.mgr_id=e.emp_id
         where e.emp_id = 102);
         
-- or smaller solution sol2:
select c.client_id,c.client_name from client c
where c.branch_id in(
         select b.branch_id from branch b
         where b.mgr_id = 102);
         
