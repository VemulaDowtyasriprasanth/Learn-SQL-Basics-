/* 
-- Created  By : Vemula Dowtya Sri Prasanth 
-- Create   Date : 06/22/2023
-- Description: WSDA Sales Goal .
-- They want as many Customers as possible to spend BETWEEN &7.00 and &15.00 
-- 
-- Sales Categories : 
-- Baseline Purchase -Between &0.99 and &1.99 
-- Low Purchase -BETWEEN $2.00 and $6.99 
-- Target Purchase -BETWEEN $7.00 and $15.00 
-- Top Performer -Above $15.00 
-- 

*/


SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE 
	WHEN total<2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType 
	
	
FROM 
	Invoice
	
Where 
	PurchaseType="Top Performer"

ORDER BY
	InvoiceDate



	
