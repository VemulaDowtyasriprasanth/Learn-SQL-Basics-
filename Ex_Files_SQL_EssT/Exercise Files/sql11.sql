/*


Description:What Employees are Responsible fgor 10 highest individul Sales ??
*/

SELECT 
	 e.FirstName,
	 e.LastName,				
	 c.FirstName,
	 c.LastName,
	 c.SupportRepId,
	 i.CustomerId,
	 i.total
FROM
	Invoice as i
INNER JOIN 
	Customer as c
ON 
	i.CustomerId == c.CustomerId
INNER JOIN 
	Employee AS e
ON 
	c.SupportRepId == e.EmployeeId
ORDER BY 
	i.total DESC 
LIMIT 10 

	




