DROP DATABASE MusicShop;
GO

CREATE DATABASE MusicShop ON PRIMARY  ( NAME = MusicShop_dat, filename = 'C:\MusicShop.mdf',SIZE=10MB, MAXSIZE=50MB,FILEGROWTH=5%);
GO

CREATE TABLE MusicShop..MUSIC_CATEGORY
(
	Category_ID int PRIMARY KEY IDENTITY(1,1),
	Category_Name varchar(50),
	Category_Description varchar(100),
	FanBase int
);
GO

CREATE TABLE MusicShop..RENTAL_CATEGORY
(
	Rental_Cat_ID int PRIMARY KEY IDENTITY(1,1),
	Rental_Cat_Description varchar(100),
	Daily_Rental_Amount int
);
GO

CREATE TABLE MusicShop..RATING
(
	Rate_Code varchar(50) PRIMARY KEY,
	Rate_Description varchar(100)
);
GO

CREATE TABLE MusicShop..MUSIC
(
	Serial_number int PRIMARY KEY IDENTITY(1,1),
	Category_ID int FOREIGN KEY REFERENCES MUSIC_CATEGORY(Category_ID),
	Rental_Cat_ID int FOREIGN KEY REFERENCES RENTAL_CATEGORY(Rental_Cat_ID),
	Rate_Code varchar(50) FOREIGN KEY REFERENCES RATING(Rate_Code),
	Music_Title varchar(50)
);
GO