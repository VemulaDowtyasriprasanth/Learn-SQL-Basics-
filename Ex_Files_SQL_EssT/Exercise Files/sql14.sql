/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Creating a Mailing List of US Companies 
*/

SELECT
		FirstName,
		LastName,
		BirthDate,
		strftime('%Y-%m-%d',BirthDate) as [BirthDate No TimeCode],
		strftime('%Y-%m-%d','now')- strftime('%Y-%m-%d',BirthDate) AS Age
		
FROM
		Employee

	

