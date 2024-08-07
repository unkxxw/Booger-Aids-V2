/*
FileName: vw_Flight.sql
Programmer Name: Kagiso Mayekiso
Description: This file will create the view vw_Flight which will show all the flights according to thier availability and prices per reservation*/

USE Flight_booking_system
GO

CREATE VIEW vw_Flight AS
SELECT flightAvailability, flightPrice
FROM Flights
GO

--This code is used to test the view
SELECT *
FROM vw_Flight
GO

