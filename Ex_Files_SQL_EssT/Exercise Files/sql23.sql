/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
DEscription: Views
*/


CREATE VIEW V_Avg_Total_ AS 
SELECT
	round(avg(Total),2) AS [Average Total]
FROM
	Invoice
