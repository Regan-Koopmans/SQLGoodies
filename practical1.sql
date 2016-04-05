CREATE DATABASE HomeAffairs ON PRIMARY ( NAME = HomeAffairs_dat, FILENAME = 'C:\HomeAffairsdat.mdf', SIZE=10MB,MAXSIZE=50MB,FILEGROWTH=5%);
GO

USE HomeAffairs;
GO

CREATE SCHEMA Location AUTHORIZATION dbo;
GO

CREATE SCHEMA Registrations AUTHORIZATION dbo;
GO

CREATE SCHEMA People AUTHORIZATION dbo;
GO

CREATE TABLE HomeAffairs.Location.Address
(
	AddressID int NOT NULL PRIMARY KEY,
	HouseNumber varchar(20) NOT NULL,
	StreetName varchar(50) NOT NULL,
	City varchar(50) NOT NULL,
	Province varchar(50) NULL,
	Country varchar(70) NULL
);
GO

CREATE TABLE HomeAffairs.People.Person
(
	PersonID int NOT NULL PRIMARY KEY,
	FirstName varchar(50) NULL,
	LastName varchar(50) NULL,
	BirthDate datetime2(7) NOT NULL,
	AddressID int NOT NULL FOREIGN KEY REFERENCES Location.Address(AddressID)
);
GO

CREATE TABLE HomeAffairs.Registrations.Births
(
	BirthID int NOT NULL PRIMARY KEY
);
GO

CREATE TABLE HomeAffairs.People.Child
(
	ChildID int NOT NULL PRIMARY KEY,
	PersonID int NOT NULL FOREIGN KEY REFERENCES People.Person(PersonID),
	BirthID int NOT NULL FOREIGN KEY REFERENCES Registrations.Births(BirthID),
);
GO

CREATE TABLE HomeAffairs.People.NonCitizen
(
	NonCitizenID int NOT NULL PRIMARY KEY,
	Passport varchar(50) NOT NULL,
	PersonID int NOT NULL FOREIGN KEY REFERENCES People.Person(PersonID)
);
GO

CREATE TABLE HomeAffairs.People.Citizen
(
	CitizenID int NOT NULL PRIMARY KEY,
	SouthAfricanSomething varchar(50) NOT NULL,
	PersonID int FOREIGN KEY REFERENCES People.Person(PersonID)
);
GO