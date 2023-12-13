create database college ;
use college; 
create table college (
     student_id int primary key ,
      name varchar(50) 
    
) ;

insert into COLLEGE
(student_id , name  )
 values
 (102 , "BOB"),
 (103 , "Chris"),
 (104 , "Foden") ;
 
 create table subject(
     sub_id int primary key ,
     course_name varchar(10)
     ); 
insert into subject
(sub_id , course_name  )
 values
 (102 , "English"),
 (103 , "Physics"),
 (104 , "Chemistry"), 
 (108 , "Math") ;  
  /*JOINS in sql -> Join is used to combine rows from two or more tables , based on a related column between them.*/
  
  /*Inner Join-> REturns records that have matching values in both tables*/
   select *
 from college 
 inner join subject 
 on college.student_id = subject.sub_id ;  
 /*Left Join-> Returns all record from the left table ,and the matched records from the right table*/
 select * 
 from college 
 left join subject 
 on college.student_id = subject.sub_id ;  
 /*Right Join-> Returns all record from the right table ,and the matched records from the left table*/
select * 
from college 
right join subject 
on college.student_id = subject.sub_id ;  
/*FUll Join-> Returns all records when there is a match in either left or right table*/
select*
from college as a 
left join subject as b 
on a.student_id = b.sub_id 
union 
select *
from college as a
right join subject as b 
on a.student_id = b.sub_id ;
/*Left Exclusive Join*/
 select * 
 from college 
 left join subject 
 on college.student_id = subject.sub_id 
 where sub_id is null ;
/*right Exclusive Join*/
 select * 
 from college 
 right join subject 
 on college.student_id = subject.sub_id 
 where student_id is null ;
 
 
 /*self join -> It is a regular join but the table is jioined with itself*/
 create table employee(
 id int primary key , 
 name varchar(50) , 
 manager_id int 
 ) ; 
 insert into employee 
 (id , name , manager_id) 
 values 
 (101,"adam",103), 
 (102,"Bob",104) , 
 (103, "casey",Null) ,
 (104,"donald",103) ; 
 select *from employee ;
 select a.name as manager_name , b.name
 from employee as a 
 join employee as b
 on a.id = b.manager_id ;
 
 /*Union -> it is used to combine the result-set of two or more select statements. Gives unique records.(same no.of column , same data types)*/
 
 select name from employee
 union 
 select name from employee ;
 
 
