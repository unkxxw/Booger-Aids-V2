/*
FileName: SeniorUsers_view.sql
Programmer Name: Kagiso Mayekiso
Description: This file will create the vw_SeniorsUsers view this view will select all the senior users who qualify for a discount according to thier age
*/

USE Flight_booking_system
GO

CREATE VIEW vw_SeniorsUsers AS
SELECT *
FROM Customer
WHERE age >= 65
GO

--This code is used to test the view
SELECT *
FROM vw_SeniorsUsers
GO

