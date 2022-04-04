select
    t.request_at as Day,
    round(sum(case when t.status like "cancelled%" then 1 else 0 end) / count(*), 2) as "Cancellation Rate"
from
    Trips as t 
where t.client_id in (select users_id from users where banned='No')
    and t.driver_id in (select users_id from users where banned='No')
    and t.request_at between "2013-10-01" and "2013-10-03"
group by request_at
;
