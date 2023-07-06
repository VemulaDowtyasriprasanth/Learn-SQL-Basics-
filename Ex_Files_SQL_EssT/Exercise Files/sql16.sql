/*
CREATED By: Vemula Dowtya Sri Prasanth,
CRETED On:7/2/2023,
Description :Aggregate Functions|What are our all time global sales?
*/

SELECT
	SUM(total) as [Total Sales],
	round(avg(total),2)  as [Average Sales],
	max(total) as [Maximum Sales],
	min(total) as [Minimum Sales],
	Count(*) as [sales Count]

FROM
	Invoice 
