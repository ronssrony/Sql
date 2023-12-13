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
 
 /*add column name syntax*/
ALTER TABLE student 
ADD COLUMN  age tinyint ;
 /*delete column name syntax*/
ALTER TABLE student 
drop column age ;
 /* rename table syntax*/
ALTER TABLE student 
RENAME TO COLLEGE ;

 /* Change column name syntax*/
 ALTER TABLE COLLEGE 
 CHANGE COLUMN id sudent_id int; 
 
 /* Modify column datatype syntax*/
 ALTER TABLE COLLEGE 
 MODIFY marks int ;
 
 /*Using TRANCATE to delete all the data of table*/
 TRUNCATE TABLE COLLEGE ;

/*Practice QS->*/
ALTER TABLE COLLEGE 
CHANGE COLUMN name full_name varchar(50) ;

ALTER TABLE COLLEGE 
drop grade ;

delete from COLLEGE
where marks<80 ;
 
select *from COLLEGE; 
