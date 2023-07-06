/*

How many Transactions took place between 2011-2012?
How much money did WSDA Music Make during the Same Period?
*/
SELECT 
	COUNT(*),
	sum(total)
FROM 
	Invoice
WHERE
	InvoiceDate>='2011-01-01' AND InvoiceDate<='2012-12-31'