create database college ;
use college ;
create table student(
  rollno int primary key , 
  name varchar(50),
  marks int not null ,
  grade varchar(2) , 
  city varchar(20) 
  );
  
  insert into student
  (rollno , name , marks , grade ,city)
  values 
  (101 , "anil" , 78 , "A", "pune"),
  (102 , "bhumika",80 ,"A", "Mumbai"),
  (103 , "Chetan" , 90 , "A", "Delhi"),
  (104 , "Shagar" , 65 , "B","kalkata"),
  (105 , "dhruv" , 50 , "C" , "new Delhi"),
  (106 , "suriya", 100 , "A", "Chennai") ;
  
  select name , marks from student ; /*select name and marks to display from student table*/
  select *from student ;              /*Select all tha columns to display */

  select distinct city from student ; /*to display the unique values of this column*/
  
  select *from student where marks>80 ; /*Using clause (some condition)*/ 
  select *from student where marks>80 and city="Chennai" ;
  select *from student where marks between 70 and 90 ; /*Using between logical operator*/ 
  select *from student where city in ("Delhi","Mumbai","faridabad")/*Using IN logical operator*/  
  select *from student where city not in ("Delhi","Mumbai","faridabad")/*Using NOT logical operator*/ 
  
  /*limit clause -> sets an upper limit on number of (tuples) rows to be returned*/ 
  select *from student where marks>70 limit 2 ;/*only two of rows will be showed*/ 
  /*Order by Clause -> To sort in Ascending(ASC) or Descending order(DESC)*/
  select *from student order by city asc ;
  
  /*Aggregate Funtion -> perform a calculation on a set of values , and return a single value->count() , max() , min() , sum(), avg() */
   
   select max(marks) from student ; 
   select count(name) from student ;
   select avg(marks) from student ;
  /*Group by Clause->it collects data from multiple records and groups the result by on or more  column*/ 
  select city , count(rollno) from student group by city ;
  /*Parctice Qs-> Write the Query to find avt marks in each city in ascending order*/ 
  select city , avg(marks) from student group by city order by city asc ;
 /*Having Clause -> used when we want to apply any condition after grouping */ 
  select city, count(name) from student group by city having max(marks)>80 ;
  /*GENERAL ORDER OF CLAUSE*/
  select city 
  from student 
  where grade = "A"
  group by city 
  having max(marks) > 80 
  order by city desc ; 
