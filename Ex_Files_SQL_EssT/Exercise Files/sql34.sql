/*

How many Transcations are above the avergae Treanscation amount during the same Time period ?
-- */
-- SELECT
-- 	round(avg(total),2) as [Average TRanscation Amount]
-- FROM
-- 	Invoice i
-- WHERE
-- 	InvoiceDate>='2011-01-01' and InvoiceDate<='2012-12-31'
-- ORDER BY
-- 	i.total DESC
-- Get the number of Transcation above the Average TRANSACTION Amount

SELECT
	count(total) as [Number of Transcations above Average]
FROM	
	Invoice
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


	