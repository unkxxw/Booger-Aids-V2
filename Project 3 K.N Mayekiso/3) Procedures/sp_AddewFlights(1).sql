/*
FileName : sp_AddewFlights.sql
Programmer: Kagiso Mayekiso
Description: This file creates an insert procedure to insert new flights as they become available*/

USE Flight_booking_system
GO

--Createing the stored insert procedure
CREATE PROCEDURE sp_AddNewFlights (
    @flightNumber VARCHAR(10),
	@flightPrice MONEY,
	@destination VARCHAR(30),
	@flightDate DATE,
    @departureTime TIME,
    @arrivalTime TIME,
    @capacity INT,
	@flightAvailability INT 
)
AS

SELECT * FROM Flights WHERE flightNumber = @flightNumber

--The code below adds a row shows where inserts are which is the new flights in the flights table 
BEGIN
    INSERT INTO Flights (flightNumber,flightPrice, destination, flightDate, departureTime, arrivalTime, capacity, flightAvailability)
    VALUES (@flightNumber, @flightPrice, @destination, @flightDate, @departureTime, @arrivalTime, @capacity, @flightAvailability)
END
GO

--Executing the sp_AddNewFlights procedure and inserting data into the flights table 
EXEC sp_AddNewFlights 'VV556', 5000, 'Cape Town', '2023-01-02', '04:00', '05:00', 200, 199
GO

--Testing the procedure
SELECT *
FROM Flights
GO

