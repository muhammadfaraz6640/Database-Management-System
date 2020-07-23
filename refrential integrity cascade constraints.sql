create database company

create table employee(
	emp_id nt primary key identity not null,
	emp_name nvarchar(50)
);

create table branch(
	bid int primary key identity not null,
	BName nvarchar(50)
);

alter table employee add bid int foreign key REFERENCES branch(bid) on delete cascade /*cascade means deleteing parent table row can result in deleting matching row in child table*/

select * from employee,branch

insert into branch values('Nazimabad')

insert into employee values('faraz',1)

delete from employee where emp_id =1 /*now its deleted the child table matching row too*/