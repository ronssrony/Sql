create database college ;
use college; 
create table student (
      id int primary key ,
      name varchar(50) ,
      marks tinyint ,
      grade varchar(20),
      city varchar(10) 
) ;
insert into student
(id , name ,marks , grade ,city )
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
 

 update student  /*update funtion*/
 set grade = "A+"
 where name = "Riyad" ;
select *from student;   
 delete from student /*Delete funtion*/
 where marks<50 ;   
 
 /*Foreign key concept and applying "ON DELETE CASCADE" and "ON UPDATE CASCADE"*/
 CREATE TABLE Course(
     id int primary key ,
     name varchar(50)
     ) ; 
CREATE TABLE Teachers(
   id int primary key , 
   name varchar(50) , 
   course_id int ,
   foreign key (course_id) references Course(id) 
   ON UPDATE CASCADE 
   ON DELETE CASCADE 
   ); 
   
insert into Course 
(id , name) 
values 
(101 ,"Bangla"),
(102 ,"English"),
(103 ,"Math"); 

insert into Teachers 
(id , name , course_id ) 
values 
(101, "Nasif",102) , 
(102, "Mohid",103) , 
(103, "BOM" , 101) ; 

update Course 
set id = 108
where id = 101 ;

select *from Course ;
select *from Teachers ;

