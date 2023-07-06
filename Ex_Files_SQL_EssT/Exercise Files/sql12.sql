/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Creating a Mailing List of US Companies 
*/

SELECT
		FirstName,
		LastName,
		Address,
		FirstName||' '||LastName|| ' '||Address||','||City || State || PostalCode AS [Mailing Address]
FROM
		Customer 
WHERE
	 Country ='USA'
