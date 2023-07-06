/*
	CHALLENGE3-QUERIES THAT PERFORM IN DEPTH ANALYSIS WITH THE AIM OF FINDGING EMPLOYEES WHO MAY HAVE BEEN FINANCIALLY MOTIVATED TO COMMIT THE CRIME
	1.Find the list of Employeees who exceeded the average Transcation Amount from Sales they generated during 2011-2012 
	2.create a Commission Payout Coulmn that displays each Employee's Comissison based on 15% of the Sales Transcation Amount 
	3.Which Emoployees made highest Compensation ?
	4.Which Customer Made the highest Purchase ?
	5.List the cutomers that were Served by the Employee identified in the Last Question 
	6.Look at the Customer Record See anything Suspecious ?
	7.who can you conclude is our Primary Person of Interest ?
*/
--Get a list of Employess who exceeded average TRanscation Amount fro mthe Sales they Generated during 2011-2012 


SELECT
	e.FirstName,
	e.LastName,
	sum(total) as [Total Sales ]
FROM	
	Invoice i 
INNER JOIN
	Customer c
ON i.CustomerId=c.CustomerId
INNER JOIN
	Employee e
ON e.EmployeeId=c.SupportRepId
WHERE
	total > (
					SELECT
						round(avg(total),2) as [Average TRanscation Amount]
					FROM
						Invoice i
					WHERE
						InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
					ORDER BY
						i.total DESC
			)
AND
InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
ORDER BY  e.LastName


-- 2.create a Commission Payout Coulmn that displays each Employee's Comissison based on 15% of the Sales Transcation Amount 
SELECT
	e.FirstName,
	e.LastName,
	sum(total) as [total Sales ],
	round(sum(total) *0.15,2) as [Comission Payout]
FROM	
	Invoice i
inner join 
	Customer c
on i.CustomerId=c.CustomerId
inner JOIN
	Employee e
on e.EmployeeId =c.SupportRepId
WHERE
	InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
group By 
	e.FirstName,
	e.LastName
order by
e.LastName

-- 	3.Which Emoployees made highest Compensation ?

-- Jane Peacock


-- 4.Which Customer Made the highest Purchase ?

SELECT
	c.FirstName AS [Customer FN],
	c.LastName AS [Customer LN],
	e.FirstName as [Employee FN],
	e.LastName as [Employee LN],
	sum(i.total) as [total Sales],
	round(sum(i.total)*.15,2) as [Comisssion Payout]
	
FROM	
	Invoice i
inner join 
	Customer c
on i.CustomerId=c.CustomerId
inner JOIN
	Employee e
on e.EmployeeId =c.SupportRepId
WHERE
	InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
AND e.LastName ='Peacock'
group By
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName
order by [Total Sales] DESC



SELECT 
	*
FROM 
	Customer c
where 
	c.LastName='Doeein'








