select c.Employee
	from
	(
	select a.names as Employee
	from Employee as a join Employee as b
	on a.managerId = b.id
	where a.salary > b.salary
	) as c
;
