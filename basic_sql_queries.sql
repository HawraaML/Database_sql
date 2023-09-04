/* Create a database */
create database class;

/* delete a database */
drop database class;

/* Create a table */
create table student(
id int not null auto_increment,
fname varchar(20),
lname varchar(20),
average int,
primary key(id));

/* delete a table */
drop table student;

/* to select all column in query we use * after select keyword */
select * from student;

/* to select a specific column from table we but its name after select keyword */
select fname from student;

/* to select item with a condtion we use where and put our condition after it */
select fname,average from student
where average = 80;

/* use and with where */
select fname,lname from student
where fname = 'AB' and lname = 'CD';

/* use or with where */
select fname,lname from student
where fname = 'AB' or lname = 'EF';

/* use not with where */
select fname,lname from student
where NOT fname = 'AB';

/* to insert new record in table we use insert into */
insert into student(fname,lname,average)
values('IJ','KL',97);

/* AGGREGATION FUNCTION */

/* count use to return number of rows that match our condition */
select count(id) from student
where fname = 'AB';

/* avg use to return average value of numrical column */
select avg(average) from student;

/* sum use to return total sum of numrical  column */
select sum(average) from student;

/* min use to return minimum value of numrical column */
select min(average) from student;

/* max use to return maximum value of numrical column */
select max(average) from student;

/* group by use to arrange similar type of data into a group in the code below if there is a repeated 
value in count of id will give the number of repeated value*/
select count(id), fname from student
group by fname;

/* having we use it when we want to put  a condition to decide which group will be in final result*/
select count(id), fname, average from student
group by fname, average
having average > 80;

/* orderd by use to order the item in column in ascending or descending  order */
select count(id), fname, average from student
group by fname, average
order by fname;

select count(id), fname, average from student
group by fname, average
/* this use for descending */
order by  fname desc; 

/* is null use to check if the value or cell in table is empty  */
select fname,lname from student
where average is null;

/* is null use to check if the value or cell in table is not empty */
select fname,lname from student
where average is not null;

/* update use to modify rows in table */
update student
set fname = 'OG',lname = 'WQ',average=99
where id = 8;

/* delete use to delect rows that is not requied */
delete from student 
where average is null;
select * from student;

# the code below this comment use to change the mode that does not allow me to use where with delete function */
SET SQL_SAFE_UPDATES=OFF;

# in use to when we want multiple values with where */
select fname,lname from student
where average in(90,80,60);

# between use to when we want to see a range of data by specfing the start and the end and it will show in between these end includint the start and end  */
select fname,lname,average from student
where average between 80 and 100;

/* alliases use when we give a table or a column a temprory name */
select id as studentid from student;

/* alliases with table name */
select s.id from student as s;


/* comparsion operators */

/* < ,> ,<= ,>= ,= */
select fname,average from student 
where average >70;

select fname,average from student 
where average <=90;

select fname,average from student 
where average =70;

/* like with % use to specify the start or end of the item we need to fetch where like specify the item and % with a letter specify the begining or ending of this item */
select fname,lname from student
where lname like ('C%');

/* specify end with letter we specify */
select fname,lname from student
where lname like ('%j');

/* specify start and end with letter we specify */
select fname,lname from student
where lname like ('i%j');

/* when(if) else condition 
here it will see the fname if its value 'ab' it will print hello 
and if it is not it will go to else and print no name such that*/
select case(fname) 
when 'ab' then 'hello'
else 'no name such that'
end 
from student;