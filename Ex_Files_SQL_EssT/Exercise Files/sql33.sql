/*

How many Transcations are above the avergae Treanscation amount during the same Time period ?
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
