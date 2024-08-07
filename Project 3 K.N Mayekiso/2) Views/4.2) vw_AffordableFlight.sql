/*
FileName: AffordableFlight_view.sql
Programmer Name: Kagiso Mayekiso
Description: This file will create the vw_AffordableFlight view which will show the top 3 flights with thier reservervation and price*/


USE Flight_booking_system
GO
 
CREATE VIEW vw_AffordableFlight AS
SELECT TOP 3 flightPrice, flightNumber 
FROM Flights

ORDER BY flightPrice ASC --We put the order in ascending order so the cheapest price comes up first
GO

--This code is used to test the view
SELECT *
FROM vw_AffordableFlight
GO


