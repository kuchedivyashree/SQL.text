create table Tech
(
TID int Primary key,
TName varchar(30) Unique not null,
Designation Varchar(30) default'C programmer',
Age int check(Age<28)
)

--insert
insert into Tech values(1,'surya','HR',23)
insert into Tech values(2,'raju','programmer',21)
insert into Tech values(3,'hari','developer',22)
insert into Tech values(4,'kiran','HR',25)
insert into Tech(TID,TName,Age) values(5,'sunny',24)

--SELECT
Select * from Tech
Select TID,TName from Tech
Select * from Tech where Designation='HR'
Select * from Tech where AGE<28
Select * from Tech where AGE<28 and Designation='Developer'
Select * from Tech where TName like 's%'
Select * from Tech where TName like '_a%'
Select * from Tech where TName like '%n'
Select * from Tech where TName like '[s-k]%'
Select * from Tech where TName not like '[s-k]%'
Select * from Tech where age between 20 and 22

