SELECT 
	BillingCity,
	avg(total) as [Average sales for each City ],
	(select avg(total) from Invoice ) as [Average Global Sales]

from 
	invoice 
GROUP BY
	BillingCity
order by
	BillingCity