/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Creating a Mailing List of US Companies 
*/

SELECT
		FirstName,
		LastName,
		Address,
		FirstName||' '||LastName|| ' '||Address||','||City || State || PostalCode AS [Mailing Address],
		length(PostalCode),
		substr(postalCode,1,5) AS [5 Digit Postal Code],
		UPPER(FirstName) AS [FirstName ALL Caps],
		LOWER(LastName) AS [LastName All Lower ],
FROM
		Customer 
WHERE
	 Country ='USA'

