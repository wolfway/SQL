select SUM(SALARY) as SUM 
       AVG(SALARY) as AVG
       MIN(SALARY) as MIN
       MAX(SALARY) as MAX
       COUNT(*)
       COUNT(DISTINCT WORKDEPT) as DEPT
from   EMPLOYEE

select WORKDEPT, SALARY
from employee
where workdept in ('A00','B01','C01')
group by workdept
having  sum(salary)
order by workdept

select distinct workdept,sum(salary)
from   employee
group by workdept
order by workdept        


select workdept,job,AVG(salary) as AVG
from employee
where job not in ('MANAGER','DESIGNER','FIELDREP')
group by workdept,job
having  avg(salary) > 25000
order by workdept,job

select  workdept, count(*) as NUMB
from employee
group by  workdept
having count(*)>1
order by NUMB, workdept

3
select  workdept,count(*) as EMP_COUNT
from employee
group by  workdept
having count(*)>3         
order by EMP_COUNT
4
select  workdept,count(*) as EMP_COUNT
from employee
where job='DESIGNER'
group by  workdept,job
having count(*)>1         
order by EMP_COUNT
5
select workdept,sex,avg(salary),avg(bonus),avg(comm),coutn(*)
from employee
group by workdept,sex
order by workdept
6
select workdept, decimal(avg(bonus),9,2) as "AVG-BONUS", decimal(avg(comm),9,2) as "AVG-COMM"
from employee
group by workdept
having avg(bonus) > 500 and avg(comm) > 2000

