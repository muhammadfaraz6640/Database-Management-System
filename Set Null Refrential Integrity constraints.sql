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
alter table employee add bid int foreign key REFERENCES branch(bid) on delete set null /*set null means deleteing parent table row can result in set null in matching row in child table*/
drop table employee

select * from employee

insert into branch values('Nazimabad')

insert into employee values('faraz',1)

delete from branch where bid = 1 /*now its set to null in child table*/

