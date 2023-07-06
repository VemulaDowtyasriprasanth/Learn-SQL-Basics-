/* 
Created  By : Vemula Dowtya Sri Prasanth 
Create   Date : 06/22/2023
Description: Get all invoices whose billing city starts with P or starts with D 


*/

SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	BillingCity Like 'P%' OR BillingCity LIKE 'D%'

ORDER BY
	InvoiceDate



	
