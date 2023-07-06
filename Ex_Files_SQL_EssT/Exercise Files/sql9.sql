/*
Created By: Vemula Dowtya Sri Prasanth
Created Date : 7/2/2023
Description :Join
*/

Select 
	  c.LastName,
	  c.FirstName,
	  c.LastName,
	  i.InvoiceId,
	  i.InvoiceDate,
	  i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId == c.CustomerId
ORDER BY
		C.CustomerId


