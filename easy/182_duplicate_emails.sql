select distinct c.email as email
from
	(
	select a.email as email
		from Person as a join Person as b
		on a.email = b.email
		wehre a.id <> b.id
	) as c
;

select email
from Person
group by email
having count(*) > 1
;
