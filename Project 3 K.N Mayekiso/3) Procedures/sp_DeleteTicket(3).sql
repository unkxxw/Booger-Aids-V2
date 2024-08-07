/*
FileName : sp_DeleteTicket(3).sql
Programmer: Kagiso Mayekiso
Description: This  file creates a delete procedure to delete a ticket record when the ticket has either been used or deleted */

USE Flight_booking_system
GO
--Creating the procedure
CREATE PROCEDURE sp_DeleteTicket
--Data that is needed from the user(s)
(
    @customerNumber INT,
	@ticketNumber INT
)
AS
--Checking if the ticket number has been used or if it has expired
BEGIN
    DELETE FROM Ticket WHERE ticketNumber = @ticketNumber AND (Used = 1 OR expiryDate = 1)
END
GO

--Testing the procedure
EXEC  sp_DeleteTicket
GO



SELECT *
FROM Ticket
GO

--DROP PROCEDURE sp_DeleteTicket