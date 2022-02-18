select
	ifnull(round(count(distinct requester_id, accepter_id)/count(distinct sender_id, send_to_id), 2), 0) as accept_rate
from
	FriendRequest, RequestAccepted
;

# follow up question 1
select 
	if(b.req=0, 0.00, round(a.cnt/b.cnt, 2) as accept_rate, a.month)
from
	(select 
		count(distinct requeter_id, accepter_id) as cnt, Month(accept_date)	as month 
	from 
		request_accepted
	) as a,
	(
	select 
		count (distinct sender_id, sent_to_id) as cnt, Month(request_date) as month
	from
		friend_request
	) as b
where a.month = b.month
group by a.month
;
