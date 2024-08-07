/*FileName: sp_Report.sql
Programmer Name: Kagiso Mayekiso
Description: The following script makes a print procedure to show the details of a specified flight class, the memeber's name and contact number of the flight class they belong to */
USE Flight_booking_system
GO

CREATE PROCEDURE sp_Report--Creating the procedure

    @id BIGINT--Data that is needed from the user(s)

AS
BEGIN--Declaring the data the is going to be used

    DECLARE @flightNumber VARCHAR(10),
	@flightPrice VARCHAR(30),
	@destination VARCHAR(30),
	@flightDate DATE,
	@className VARCHAR(30),
	@memberName VARCHAR(30),
	@bookingNumber INT,
	@counter INT

	SELECT
	@flightNumber = flightNumber,
	@flightPrice = flightPrice,
	@flightDate = flightDate
	FROM Flights
		--JOIN FlightClasses ON FlightClasses.customerID = Flights.customerID
		WHERE flightNumber = @flightNumber
	--JOIN Bookings ON Flights.flightNumber = Bookings.bookingNumber
	
	SELECT @bookingNumber = bookingNumber
	FROM Bookings

	SELECT @className = className,
	@memberName = memberName
	FROM FlightClasses

	-- We now print the heading of the report
	PRINT'FLIGHT BOOKING REPORT:'
	PRINT'___________________'
	PRINT''
	PRINT'Book ID:' + @bookingNumber
	PRINT'customer name: ' + @memberName         PRINT 'date: ' + @flightDate 
	PRINT'flight number: ' + CAST(@flightNum AS VARCHAR)         --PRINT 'Flight Class :' + @className  
	PRINT'Destination' + @destination
	PRINT''
	PRINT'No.			Customer Name			Flight Price'
	PRINT'__________________________________________________'
	RETURN

	DECLARE flightData_Cursor CURSOR LOCAL
	FOR SELECT  Customer.customerName, customer.telephoneNumber--, FlightClasses.className
	FROM Flights             
		JOIN customer ON customer.id  = Flights.customerID
	WHERE Flights.customerID = @id 
	FOR READ ONLY

	FETCH NEXT FROM flightData_Cursor
	INTO
	@customerName, @telephoneNumber, @className, @flightNumber

	SET @counter = 1

	WHILE @@FETCH_STATUS = 0 --When theres a 0 it means that there are no errors
	BEGIN  --we begin printing
		PRINT  ( CONVERT(VARCHAR,@counter) + SPACE(5-LEN(@counter)) + (@custName + SPACE(15-LEN(@custName)) + 
		CAST(@custTelNo AS VARCHAR) + SPACE(10-LEN(@custTelNo)) +@flightClass+ SPACE(15-LEN(@flightClass))))
		SET @counter = @counter + 1
         
    OPEN flightData_Cursor 
		--Fetches the next record
		FETCH NEXT FROM flightData_Cursor
		INTO @custName,@custTelNo,@flightClass
	END
	Print ''

	--Closes up the cursor and deallocates it
	CLOSE flightData_Cursor
	DEALLOCATE flightData_Cursor

END
GO

--Testing the procedure
EXEC sp_Reports
GO
