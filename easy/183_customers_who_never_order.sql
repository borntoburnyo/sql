select a.name as Customer
from Customer as a left join Orders as b
on a.id = b.customerId
where b.customerId is NULL
;
