select 
	a.name
from
	salesperson as a
where a.sales_id not in 
	(
	select 
		c.sales_id 
	from 
		orders as c join company as b
		on c.com_id = b.com_id
	where b.name = 'RED'
	)
;
