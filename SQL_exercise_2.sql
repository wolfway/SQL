1
select lastname,firstnme,deptname
from employee,department
where workdept=deptno
order by deptname,lastname ,firstnme
2
select lastname,firstnme,deptname,job
from employee,department
where workdept=deptno
  and deptno between 'A02' and 'D22'
  and job <> 'MANAGER' 
order by  deptname,job, lastname,firstnme
3
select deptname,lastname,firstnme
from  employee,department
where empno=mgrno
order by  deptname
4
select deptname,lastname,firstnme
from  employee,department
where deptno=workdept 
  and job='MANAGER'
order by  deptname
5
select distinct p.projno,projname,actno
from   project p,emp_act a
where  p.projno like 'AD%'
order by  projno,actno
6
select  distinct e.empno,lastname,projno
from    emp_act a,employee e
where   projno='AD3113' 
  and   e.empno=a.empno   
order by  empno,projno
7
select  a.empno,lastname,firstnme,a.projno, projname,actno,emstdate
from    emp_act a,employee e,project p
where   emstdate='1982-10-01' 
  and   a.projno=p.projno
  and   e.empno=a.empno   
order by  p.projno,empno,actno
8
select  workdept,lastname,projname,actno
from    project p,emp_act a,employee e
where   workdept='A00' 
        respep=e.empno
  and   p.projno=a.projno
order by  projname,actno
9
select  workdept,lastname,projname,actno
from    project p,emp_act a,employee e
where   workdept='A00' 
  and   respemp=e.empno
  and   p.projno=a.projno
order by  projname,actno
10

11