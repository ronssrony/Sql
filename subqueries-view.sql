create database college ;
use college; 
create table college (
     student_id int primary key ,
      name varchar(50) ,
      marks tinyint ,
      grade varchar(20),
      city varchar(10) 
) ;
drop table college ;
insert into COLLEGE
(student_id , name ,marks , grade ,city )
 values
 (1,"rataan",70 ,"A","khulna") , 
 (2 ,"Mamun",90, "A+" , "khulna"), 
 (3 , "Disha",92, "A+","Mymensing") ,
 (4, "Trisna",98 ,"A+","Chittagong"),
 (5, "Fardin",67 , "A-","Dhaka") , 
 (6, "Tanim" , 85 , "A" , "khulna"),
 (7, "Riyad", 50 , "B+" , "Dhaka"), 
 (8, "Sheraz", 70 , "A-", "Chittagong"),
 (9, "Shojib",40 , "F" , "Mymensing"); 
 
/*SUBQUERIES*/

SELECT marks , name
from college 
where marks > (select avg(marks) from college) ;
/*FInd the name of all students will even roll numbers.*/
select name , student_id 
from college 
where student_id %2 =0  ; 

select name ,student_id
from college 
where student_id in (select student_id from college where student_id%2 = 0) ;

/*find the maximum marks of khulna studnets*/

select max(marks)
from (select *from college where city="khulna") as temp ;

/*mysql views*/ 
create view view2 as 
select student_id ,city from college ;
drop view view1 ;
select *from view2 ;
 
