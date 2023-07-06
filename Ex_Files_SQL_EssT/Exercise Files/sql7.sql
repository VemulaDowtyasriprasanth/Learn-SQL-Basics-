/*
Created By : "Vemula Dowtya Sri Prasanth"
Created Date: 06/22/2023 
Description: JOIN 
*/
SELECT 
	*
FROM 
	Invoice 
INNER JOIN 
	Customer
ON Invoice.CustomerId=Customer.CustomerId

ORDER BY Customer.CustomerId
