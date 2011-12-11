UNION, EXCEPT, INTERSECT
select workdept
from employee
union all
select sex
from employee

1
select  lastname,firstnme,'BEFORE A RAISE' as AAA,salary
from employee
where job<>'MANAGER' and workdept='D21'
union
select  lastname,firstnme,'After A RAISE' as AAA,decimal(salary + salary*0.1)
from employee
where job<>'MANAGER' and workdept='D21'
order by lastname,firstnme
2
select workdept,empno,salary
from employee
where workdept='A00'
union all
select workdept,'SUM',sum(salary) 
from employee
where workdept='A00'
group by workdept
order by 3
3
select
from employee
union
select
from employee
4
select
from employee
union
select
from employee