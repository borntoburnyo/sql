select
	c.name, c.bonus
from
	(
	select 
		emp.name, bns.bonus
	from
		Employee as emp left join Bonus as bns
		on emp.empId = bns.empId
	where bns.bonus < 1000
	) as c
;
