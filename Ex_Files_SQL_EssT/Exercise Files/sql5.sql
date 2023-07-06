/* 
Created  By : Vemula Dowtya Sri Prasanth 
Create   Date : 06/22/2023
Description: Get a List of all invoices that are greater than 1.98 from any cities whose name start with P or starts with D ? 


*/

-- BEMDAS (Paranthesis >exponents>multiplication>Division>Addition>Subtraction 

SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	total >1.98 AND (BillingCity Like 'P%' OR BillingCity LIKE 'D%')

ORDER BY
	InvoiceDate



	
