SELECT * FROM employee
select * from project

department
employee
project
emp_act

select lastname,birthday,salary  from employee where salary >30 000

1
select empno,lastname,birthdate,salary
from employee
where salary>30000
2
select lastname,firstnme,workdept
from employee
order by workdept desc,lastname desc
3
select DISTINCT edlevel
from employee
order by edlevel desc 
4
select distinct empno,projno
from  emp_act
where empno <= '100'
order by empno
5
select lastname,salary,bonus
from employee
where sex = 'M'
6
select lastname,salary,comm
from employee
where salary > 20000 and hiredate > '1980-01-01'
7
select lastname,salary,bonus,comm 
from employee
where salary > 22000 and bonus = 400 or bonus = 500 and comm < 1900
order by lastname
8
select lastname,salary,bonus,comm 
from employee
where salary > 22000 and bonus = 400 or salary > 22000 and bonus = 500 and comm < 1900
order by lastname
9
select projno,actno,emstdate,emendate
from  emp_act
where projno like 'AD%' and actno in (10,80,180)
order by projno
10
select mgrno,deptno
from  department
where mgrno is not null
order by  mgrno
11
select empno,lastname,salary,bonus,comm 
from employee
where bonus between 800 and 1000
order by  bonus ,empno
12
select empno,lastname,salary,workdept 
from employee
where workdept between 'A00' and 'C01'
order by  lastname,empno
13
select *
from project
where projname like '%SUPPORT%'
order by projno
14
select *
from  department
where deptno like '_1_'
order by  deptno
15
select lastname,firstnme,midinit,salary
from employee
where job <> 'MANAGER' and job <> 'PRES'
order by  salary desc
FETCH FIRST 5 ROWS ONLY
