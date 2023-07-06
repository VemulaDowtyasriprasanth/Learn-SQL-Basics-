/* 
Created  By : Vemula Dowtya Sri Prasanth 
Create   Date : 06/22/2023
Description: Get a List of all invoices were billed after 2010-05-22 and have a total less than 3:00


*/
SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	Date(InvoiceDate)> '2010-05-22' AND total<3

ORDER BY
	InvoiceDate



	
