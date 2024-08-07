/*
FileName: Delete_database.sql
Programmer: Kagiso Mayekiso
Description: This file will delete the entire database*/

IF EXISTS(SELECt name FROM master.dbo.sysdatabases
				WHERE name = 'Flight_booking_system')
BEGIN
	DROP DATABASE Flight_booking_system
	PRINT 'The database has been deleted'
END