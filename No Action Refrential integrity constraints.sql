create database company

create table employee(
	emp_id int primary key identity not null,
	emp_name nvarchar(50)
);

create table branch(
	bid int primary key identity not null,
	BName nvarchar(50)
);
alter table employee drop column bid
alter table employee add bid int foreign key REFERENCES branch(bid) on delete no action /*it deny the deletion*/
drop table employee

select * from employee
select * from branch

insert into branch values('Nazimabad')

insert into employee values('faraz',2)

delete from branch where bid = 2 /*it refuses*/
