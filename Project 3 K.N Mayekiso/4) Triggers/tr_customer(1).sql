/* 
FileName: tr_trigger2.sql
Prgrammer: Kagiso Mayekiso
Description: This script file will create a trigger for the flight booking system */

USE Flight_booking_system
GO

CREATE TRIGGER tr_customer
ON Customer 
AFTER INSERT
AS
	PRINT ' A new customer has registered thier account'
GO

INSERT INTO Customer(id, customerName, customerSurname, age, email, telephoneNumber, postalAddress)
VALUES(030226198098, 'Jozi', 'Echo', 23, 'joziE@gmail.com', 0194682764, ' 99 locked tunes street')
GO
