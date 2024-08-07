/*
FileName : Sample_Data_Inserts.sql
Programmer: Kagiso Mayekiso
Description: This file will insert Sample data into the database*/

USE Flight_booking_system
GO

INSERT INTO Customer(id, customerName, customerSurname, age, email, telephoneNumber, postalAddress)
VALUES(0102135084147, 'Bill', 'Seas', 22, 'billijohn@yahoo.com', 0136785498, '3 coller drive'),
	(7212144678903, 'Frank', 'Ocean', 51, 'frank.56@gmail.com', 0918264738, '9 forest street'),
	(4212125097881, 'Tarvis', 'Scott', 81,'Laflame@yahoo.com', 0753145557, '901 Shelby drive'),
	(5410021230980, 'Drake', 'Aubuery', 69, 'Drizzy@gmail.com', 0686324675, '15 sponner street'),
	(9204157808188, 'Clavin', 'Harris', 40, 'howdeeep@apple.com', 0153674892, '31 flywood street'),
	(0202209930082, 'Lock', 'ville', 90, 'Kaapstad@gmail.com', 0839263018, '99 MANDEL street'),
	(4010067605182, 'DJ', 'Snake', 60, 'Snake@yahoo.com', 01946273489,' 1 NO no square street')
GO

INSERT INTO Flights(flightNumber, customerID, flightPrice, destination, flightDate, departureTime, arrivalTime, capacity, flightAvailability)
VALUES('BB456', 0102135084147, 4300, 'Cape Town', '2023-01-01', '03:00', '04:00', 50, 30),
	('CC789', 7212144678903, 1200, 'Kimberly', '2022-02-22', '04:00', '11:00', 120, 5),
	('CA907', 4212125097881,5000, 'Durban', '2022-08-25', '00:00', '12:00', 75, 70),
	('CB088', 5410021230980, 2050, 'East London', '2022-12-25', '03:30', '10:25', 70, 70),
	('AA123', 9204157808188, 3000, 'Cario', '2020-11-11', '10:45', '12:00', 100, 50),
	('AB546', 0202209930082, 1500, 'Madagascar', '2023-02-26', '09:40', '10:00', 50, 1),
	('BC099', 4010067605182, 1000, 'johannesburg', '2022-12-31', '13:00', '15:00', 120, 119)
GO

INSERT INTO FlightClasses(className, memberName)
VALUES('Executive Class', 'Bill'),
	('Economy Class', 'Frank'),
	('Executive Class', 'Travis'),
	('Bussiness Class', 'Drake'),
	('Bussiness Class', 'Clavin'),
	('Economy Class', 'Lock'),
	('Executive Class', 'DJ')
GO

INSERT INTO Bookings(bookingNumber, flightNumber, customerID, bookingDate)
VALUES(1, 'BB456', 0102135084147, '2022-12-31'),
	(2, 'CC789', 7212144678903, '2022-02-20'),
	(3, 'CA907', 4212125097881, '2022-08-26'),
	(4, 'CB088', 5410021230980, '2022-12-15'),
	(5, 'AA123', 9204157808188, '2020-11-01'),
	(6, 'AB546', 0202209930082, '2023-01-26'),
	(7, 'BC099', 4010067605182, '2022-12-31')
GO

INSERT INTO Ticket (ticketNumber,customerID, flightNumber, expiryDate, used)
VALUES(1, 0102135084147, 'BB456', 1,0),
	(2,  7212144678903, 'CC789', 0, 0),
	(3, 4212125097881, 'CA907', 0, 1),
	(4, 5410021230980, 'CB088', 1, 0),
	(5, 9204157808188, 'AA123', 1, 0),
	(6, 0202209930082, 'AB546', 0, 0),
	(7, 4010067605182, 'BC099', 0, 1)
GO
