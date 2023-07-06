SeLECT
	TrackId,
	Composer,
	Name
FROM	
	Track
WHERE
	TrackId
NOT IN
(SELECT
	DISTINCT
	TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId
)
