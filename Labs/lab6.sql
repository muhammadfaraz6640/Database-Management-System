alter table emp alter column sal int
select * from  emp

select * from dept


select empno , ename from emp where sal > (select AVG(Sal) from emp)


select empno , ename from emp where ename = any (select ename from emp where ename like '%au%')


select ename , deptno , job from emp where DEPTNO = 1700

select ename , sal from emp where deptno = (select DEPTNO from emp where ename = 'smith')


select deptno , empno as JobID , ename from emp where DEPTNO = 10 /*10 is executive dept */


select empno , ename , sal from emp where sal > (select AVG(Sal) from emp) and ename = any (select ename from emp where ename like '%au%')