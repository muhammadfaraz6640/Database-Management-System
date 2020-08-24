select * from salgrade
select * from emp where DEPTNO = 30
select * from dept 

select gra from salgrade where 

select e.ename , d.deptno , d.dname from emp e , dept d where e.DEPTNO = d.DEPTNO

select distinct e.job , d.loc from emp e inner join dept d where d.DEPTNO = e.deptno and d.DEPTNO = 30

select e.ename , d.dname , d.loc from emp e , dept d where d.DEPTNO = e.DEPTNO and e.COMM is not null

select e.ename , d.dname , d.loc from emp e , dept d where e.COMM is not null
SELECT *
FROM Test
WHERE col1 
LIKE '%[abcdefghijklmnopqrstuvwxyz]%'
collate Latin1_General_CS_AS

select e.ename , d.dname from emp e, dept d where e.ENAME LIKE '%[abcdefghijklmnopqrstuvwxyz]%'
collate Latin1_General_CS_AS

select e.ename , e.job , d.dname , d.deptno from emp e , dept d where d.DEPTNO = e.DEPTNO and d.loc = 'CHICAGO'

select ename as MGR# , empno as EMP# from emp where job != 'MANAGER' order by ename

select e.ename , d.deptno from emp e , dept d where d.DEPTNO = ( select deptno from emp where ename = 'SMITH') /* name chosen smith*/

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='salgrade'

select e.ename , e.job , e.sal , d.dname , s.gra from emp e, dept d, salgrade s where d.DEPTNO = e.DEPTNO and e.sal BETWEEN s.lowest_sal AND s.highest_sal 

select ename , hiredate from emp where HIREDATE > (select hiredate from emp where ename = 'SMITH')  /*davies doesnot exist so i write smith*/

select ename , hiredate from emp where HIREDATE < (select hiredate from emp where job = 'MANAGER')


