select
    c.name as country
from
(
select * from Calls
    union
select a.callee_id as caller_id, a.duration from Calls as a
) as t join Person as p join Country as c
on t.caller_id = p.id and substr(p.phone_number, 1, 3) = c.country_code
group by c.country_code
having sum(t.duration) / count(*) > (select sum(duration) / count(*) from calls)
;
