-- what is the average Transcation amount for each year that WSDA Music has been in Business 
SELECT
	round(avg(Total),2) as [Avergae Transcation amount],
	strftime('%Y',InvoiceDate) as [Year]
	
FROM
	Invoice
GROUP BY
	strftime('%Y',InvoiceDate)
