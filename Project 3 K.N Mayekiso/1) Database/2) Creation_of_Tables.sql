/*
FileName: Creation_of_Tables.sql
Programer: Kagiso Mayekiso
Description: This file will create the Tables with the nessary constraints*/
USE Flight_booking_system
GO

--Shows the stored information of the customers
CREATE TABLE Customer(
	id BIGINT NOT NULL PRIMARY KEY,
	customerName VARCHAR(30) NOT NULL,
	customerSurname VARCHAR(30) NOT NULL,
	age INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	telephoneNumber BIGINT NOT NULL,
	postalAddress VARCHAR(255) NULL,
	CONSTRAINT Email_UNIQUE UNIQUE (Email) --Unique constraint use to ensure the customer email is unique
)
GO

PRINT 'The Customer table has been created'
GO

--Shows all the details of all the flights
CREATE TABLE Flights(
	flightNumber VARCHAR(10) NOT NULL PRIMARY KEY,
	customerID BIGINT NULL FOREIGN KEY REFERENCES Customer(id),
	flightPrice MONEY NOT NULL,
	destination VARCHAR(30) NOT NULL,
	flightDate DATE NOT NULL,
	departureTime TIME NOT NULL,
	arrivalTime TIME NOT NULL,
	capacity INT NOT NULL CHECK (Capacity > 0), --Checks if the capacity is higher than 0
	flightAvailability INT NOT NULL
)
GO

PRINT 'The Flight table has been created'
GO

--Keeps track of which of what Flight class each member is in
CREATE TABLE FlightClasses(
	className VARCHAR(30) NOT NULL, 
	memberName VARCHAR(30) NOT NULL,
)
GO

PRINT 'The FlightClasses table has been created'
GO

--This table keeps recored of the bookings made
CREATE TABLE Bookings(
	bookingNumber INT NOT NULL PRIMARY KEY,
	--Creating a composite primary key for an intersection table
	flightNumber VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Flights(flightNumber),
	customerID BIGINT NOT NULL FOREIGN KEY REFERENCES Customer(id),
	bookingDate DATE NOT NULL,
)
GO
 
PRINT 'The Booking table has been created'
GO

--This table shows the details of the flight tickets
CREATE TABLE Ticket(
	ticketNumber INT NOT NULL PRIMARY KEY,
	customerID BIGINT  FOREIGN KEY REFERENCES Customer(id),
	flightNumber VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Flights(flightNumber),
	expiryDate INT NOT NULL,
	used INT NOT NULL
)
GO

PRINT 'The Ticket table has been created'
GO