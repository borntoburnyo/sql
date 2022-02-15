select
	ppl.firstName, ppl.lastName, addr.city, addr.state
from
	Person as ppl left join Address as addr
	on ppl.personId = addr.personId
;
