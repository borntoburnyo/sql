select 
	min(abs(a.x - b.x)) as shortest
from
	Point as a join Point as b
	on a.x <> b.x
limit 1
;

# This is faster
select
	min(a.x - b.x) as shortest
from
	point as a, point as b
where a.x > b.x
; as shortest
from
	point as a, point as b
where a.x > b.x
; as shortest
from
	point as a, point as b
where a.x > b.x
limit 1
;
