IN WHERE AND HAVING STATEMENT

select empno,lastname,bonus
from employee
where bonus = (select min(bonus)
                 from employee)  

select empno,lastname,bonus
from employee
where empno in (select mgrno
                 from department)  
1
elect workdept,empno,lastname,salary
from employee
where salary >= 5000 + (select avg(salary) from employee)
order by workdept,empno
2
select empno,lastname 
from  employee
where  empno not in (select empno from emp_act)
3
select projno,days(prendate)-days(prstdate) as DAYS
from project
where days(prendate)-days(prstdate) = (select min(days(prendate)-days(prstdate)) 
                                       from project)

4
select workdept,deptname,lastname,firstnme
from employee,department
where workdept = deptno  and  workdept not in ( select distinct workdept
                         from employee
                         where sex='F' )
5
select lastname,firstnme,edlevel,hiredate - (2000-01-01), salay
form employee

