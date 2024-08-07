/*
FileName: OnboardCustomers_view.sql
Programmer Name: Kagiso Mayekiso
Description: This file will create the vw_OnboardCustomers view which will select all the member names as well as the total Number of classes that each member will attend
*/

USE Flight_booking_system
GO

CREATE VIEW vw_OnboardCustomers AS
SELECT memberName, COUNT(*) AS TotalClasses
FROM FlightClasses
GROUP BY memberName
GO

--This code is used to test the view
SELECT *
FROM vw_OnboardCustomers 
GO