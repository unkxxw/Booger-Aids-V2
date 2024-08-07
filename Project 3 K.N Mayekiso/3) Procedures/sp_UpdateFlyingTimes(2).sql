/*
FileName: sp_UpdateFlyingTimes(2).sql
Programmer Name: Kagiso Mayekiso
Description: The following script makes an update procedure to update flying times when requested by the customer.*/

USE Flight_booking_system
GO

--Createing the stored update procedure
CREATE PROCEDURE sp_UpdateFlyingTimes(
    @newDepartureTime TIME
)
AS
--This code will update the flying times when their changed or removed
SELECT * FROM Flights WHERE DepartureTime = @newDepartureTime
GO

EXEC sp_UpdateFlyingTimes @newDepartureTime = '13:00'


--Testing the procedure
SELECT *
FROM Flights
GO
