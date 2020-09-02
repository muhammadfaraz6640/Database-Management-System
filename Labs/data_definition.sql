select * from dept40

create table dept40(
	deptID int primary key,
	Dname nvarchar(50),
	Location nvarchar(max)
)


insert into dept40 select * from dept

create table EMPA(
	empno int primary key,
	firstName nvarchar(20),
	lastName nvarchar(20),
	deptID int foreign key references dept40
)

alter table empa alter column lastName nvarchar(max)

SELECT EMPA
FROM   labs.INFORMATION_SCHEMA.empid

SELECT   TABLE_NAME, TABLE_TYPE
FROM     labs.INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_NAME

select EMPNO, ENAME, SAL, DEPTNO into EMP2 from emp

select * from emp3


drop table empa


EXEC sp_rename 'emp2', 'emp3';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'This is my comment on emp3 table',
    @level0type = N'Schema', @level0name = 'dbo',
    @level1type = N'Table', @level1name = 'emp3', 
    @level2type = N'Column', @level2name = 'ename'
   
   
select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='emp3' 

SELECT
   *
FROM
   sys.extended_properties
WHERE
   major_id = OBJECT_ID('emp3')
   AND
   minor_id = COLUMNPROPERTY(major_id, 'ename', 'ColumnId')

alter table emp3 drop column ename


ALTER TABLE emp3 SET UNUSED ( deptno );

ALTER TABLE emp3 DROP UNUSED deptno;


comment on table emp3 is 'hello'


