/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Description: Views and JOIN
*/

create view V_Tracks_InvoiceLine AS 

SELECT	
	it.InvoiceId,
	it.UnitPrice,
	it.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine it
INNER JOIN
	Track t
ON
	it.TrackId=t.TrackId

