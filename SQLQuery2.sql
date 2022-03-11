--Database-Collection of tables
--Syntax for Database
create database 
use IBM


create table IBMTrainees
(
TID int Primary key,
TName varchar(25) Unique not null,
Designation varchar(25) default 'Trainee',
Age int check(Age<24)
)

--INSERT
insert into IBMTrainees values(1,'Divya','HR',22)
insert into IBMTrainees values(2,'Ajay','HR',23)
insert into IBMTrainees values(3,'Sam','Developer',22)
insert into IBMTrainees(TID,TName,Age) values(4,'Priya',22)


--SELECT
Select * from IBMTrainees
Select TID,TName from IBMTrainees
Select * from IBMTrainees where Designation='HR'
Select * from IBMTrainees where AGE<23
Select * from IBMTrainees where AGE<23 and Designation='Developer'
Select * from IBMTrainees where TName like 'D%'
Select * from IBMTrainees where TName like '_a%'
Select * from IBMTrainees where TName like '%y'
Select * from IBMTrainees where TName like '[A-P]%'
Select * from IBMTrainees where TName not like '[A-P]%'
Select * from IBMTrainees where age between 20 and 22