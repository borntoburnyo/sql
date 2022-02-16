select a.id
from Weather as a, Weather as b
where datediff(a.recordDate, b.recordDate) = 1 and 
	a.temperature > b.temperature
;

# self join
select 
	a.id as 'Id'
from
	Weather as a
		join
	Weather as b on datediff(a.recordDate, b.recordDate) = 1
		and a.temperature > b.temperature
;
