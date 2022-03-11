use IBM

create table one
(
id int primary key,
name varchar(25),
designation varchar(25),
salary int
)

insert into one values(1,'Divya','HR',30000)
insert into one values(2,'Ajay','Test',25000)
insert into one values(3,'Priya','Dev',20000)
insert into one values(4,'Susmi','HR',23000)
insert into one values(5,'Raju','Test',15000)
insert into one values(6,'Keerthi','Dev',20000)


create table two
(
did int primary key,
dname varchar(25),
eid int foreign key references one(id)
)


insert into two values(111,'Dev',1)
insert into two values(200,'HR',4)
insert into two values(300,'Test',5)
insert into two values(400,'HR',3)
insert into two values(500,'Dev',3)

select * from one;
 select * from two;
 delete from two where did=101;
 delete from two where did=102;
 delete from two where did=111;

 select o.id,o.name,t.did,t.dname from one o right join two t on o.id=t.eid;
 select o.id,o.name,t.did,t.dname from one o full join two t on o.id=t.eid;
 select o.id,o.name,t.did,t.dname from one o inner join two t on o.id=t.eid;
  select o.id,o.name,t.did,t.dname from one o left join two t on o.id=t.eid;

  select max(salary) as MaximumSalary from one
  select max(salary),min(salary),count(salary),sum(salary),avg(salary) from one

  select max(salary) from one
  select * from one;

  
  select max(salary),designation,name from one group by designation,name
  select * from one order by designation,salary

