/*
get a list of Customers who made purchase between 2011-2012
Get a list of Customers,sales reps,total transcation amounts for each Customer between 2011-2012?
how many TRANSACTIONs are above the average transcation amount during the Same Time ?
What was the Average transcation amount for each year that WSDA Music Co has been in business ?
*/

SELECT
	c.FirstName AS [Customer FN],
	c.LastName as [Customer LN],	
	e.FirstName,
	e.LastName
FROM
	Invoice i 
inner join 
	customer c 
on
	i.CustomerId=c.CustomerId
INNER JOIN
	Employee e
ON
	e.EmployeeId=c.SupportRepId
WHERE
	InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
ORDER BY
	i.total DESC
