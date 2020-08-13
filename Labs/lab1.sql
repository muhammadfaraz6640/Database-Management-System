create database DBMS

create table Dept(
	DEPTNO int primary key,
	DNAME nvarchar(50),
	LOC nvarchar(50),
)

create table EMP(
	EMPNO int primary key identity,
	ENAME nvarchar(50),
 	JOB nvarchar(50),
	MGR nvarchar(50),
	HIREDATE nvarchar(50),
	SAL nvarchar(50),
	COMM nvarchar(50),
	DEPTNO int
)

create table SALGRADE(
	GRA nvarchar(50),
	LOWEST_SAL nvarchar(50),
	HIGHEST_SAL nvarchar(50),
)

insert into Dept values(10,'Accounting','NewYork')
insert into Dept values(20,'Research','Dallas');
insert into Dept values(30,'Sales','Chicago')
insert into Dept values(40,'Opeartions','Boston')

select * from Dept

insert into SALGRADE values('A',1000,2999)
insert into SALGRADE values('B',2000,5999)
insert into SALGRADE values('C',4000,8999)
insert into SALGRADE values('D',5000,9999)
insert into SALGRADE values('E',7000,12999)

select * from SALGRADE

insert into EMP values('smith','clerk','7902','17-DEC-80',2000,null,20)
insert into EMP values('john','Assistant manager','7906','13-DEC-81',50000,300,10)

select * from EMP

SELECT ename, job, sal AS Salary FROM   emp; /*true*/
SELECT * FROM   salgrades; /*false*/

SELECT    empno, ename, sal * 12 as "ANNUAL SALARY"    FROM      emp;

select * from Dept

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Emp'


select empno, ename, job , hiredate from EMP

select distinct job from EMP

headings Emp#. Employee,  Job and Hire Date
select empno as Emp#, ename as Employee, job "Job" , hiredate as "Hire Date" from EMP


select ENAME+','+' '+JOB as "Employee And Title" from EMP;

select ENAME+','+JOB+','+MGR+','+HIREDATE+','+SAL+','+COMM+','+DEPTNO as THE_OUTPUT from EMP;