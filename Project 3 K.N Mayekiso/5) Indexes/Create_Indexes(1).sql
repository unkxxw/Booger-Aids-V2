/*
FileName: Create_Indexes.sql
Programer: Kagiso Mayekiso
Description: TThis file creates four indexes for the Flight booking system*/

USE Flight_booking_system
GO

--Creating a non-clustered index on the customerSurname column
CREATE INDEX idx_customerSurname
ON Customer
(
	customerSurname
)
GO

--Creating a non-clustered index on the Flights table
CREATE INDEX idx_Flights
ON Flights(flightNumber, customerID, flightPrice, destination, flightDate, departureTime, arrivalTime, capacity, flightAvailability)
GO

--Creating a non-clustered index on the className column
CREATE INDEX idx_className
ON FlightClasses
(
	className
)
GO

--Creating a non-clustered on the bookings table
CREATE INDEX idx_Bookings
ON Bookings(bookingNumber, flightNumber, customerID, bookingDate)
GO