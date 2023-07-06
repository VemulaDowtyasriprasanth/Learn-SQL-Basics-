-- % is reffered to as conjunction operator I don't care what comes next 
-- Partial Search 



SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	BillingCity LIKE '%B%'
-- 	"%" before B indicates that I don't care what comes before "B" , "%" after B indicates that I don't care what comes after the B ,so it menas that I care only if B is present somewhere in the Billling City 

-- we must  include single quote in text 
ORDER BY
	InvoiceDate



	
