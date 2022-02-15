delete p1
from Person as p1, Person as p2
where p1.email = p2.email and p1.id > p2.id
;

delete from Person where id not in
	(
	select a.id from
		(
		select min(id) as id from Person group by email
		) as a	
	)
;
