select
	c.product_id, sum(c.quantity) as total_quantity
from
	(
	select
		s.product_id, s.quantity
	from
		sales as s left join product as p
		on s.product_id = p.product_id
	) as c
group by c.product_id
;
