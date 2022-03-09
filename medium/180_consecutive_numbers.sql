select
    distinct(c.num) as ConsecutiveNums
from
    (
    select num, lag(num, 1) over(order by id) as lag1, lag(num, 2) over(order by id) as lag2
    from logs) as c
where c.num=c.lag1 and c.num=c.lag2
;
