


/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Description :What are the average invoice total by City?
*/

SELECT 
	BillingCity,
	round(avg(total),2) as [Average Sales ]
FROM
	Invoice

GROUP BY
	BillingCity

HAVING 
	avg(total)>5

ORDER BY
	BillingCity
	