/* 
FileName: tr_trigger1.sql
Prgrammer: Kagiso Mayekiso
Description: This script file will create a trigger for the flight booking system */

USE Flight_booking_system
GO

CREATE TRIGGER tr_Flights --We first create the trigger tr_Flights
ON Flights
AFTER INSERT
AS
	PRINT 'A new flight has been added'
GO
INSERT INTO flights(flightNumber, customerID, flightPrice, destination, flightDate, departureTime, arrivalTime, capacity, flightAvailability)
VALUES('DA110', 030226198098, 2500, 'Pretoria', '2023-02-26', '00:00', '04:00', 20, 17)
GO
