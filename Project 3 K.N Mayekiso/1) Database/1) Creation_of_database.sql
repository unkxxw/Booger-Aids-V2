/*FileName: Creation_of_database.sql
Programer: Kagiso Mayekiso
Description: This file will create the database*/
USE master
GO
IF  EXISTS(SELECT name FROM master. dbo.sysdatabases
WHERE NAME='Flight_booking_system')
DROP DATABASE Flight_booking_system
GO

--Creating the database
CREATE DATABASE Flight_booking_system
ON PRIMARY
(
	NAME = 'booking_data',
	FILENAME = 'C:\TSQL Databases\Project\booking_data.mdf',
	SIZE = 10MB,
	FILEGROWTH = 10%

)
LOG ON
(
	NAME = 'booking_log',
	FILENAME = 'C:\TSQL Databases\Project\booking_log.ldf',
	SIZE = 10MB,
	FILEGROWTH = 10%
)
GO