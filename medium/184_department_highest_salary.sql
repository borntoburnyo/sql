select
    c.department, c.employee, c.salary
from
(
select b.name as department, a.name as employee, a.salary,
    dense_rank() over(partition by a.departmentid order by a.salary desc) as r
from employee as a join department as b
on a.department = b.id
) as c
where c.r = 1
;

# Use CTE - common expression table
with salary_rank_dept as (
select b.name as department, a.name as employee, a.salary,
    rank() over(partition by a.departmentid order by a.salary desc) as salary_rank
from employee as a join department as b
on a.departmentid = b.id
        )

select
    department, employee, salary
from
    salary_rank_dept
where salary_rank = 1
;
