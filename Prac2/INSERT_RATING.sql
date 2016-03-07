USE MusicShop;
GO;

INSERT INTO MusicShop..RATING(Rate_Code,Rate_Description)
VALUES ('A','suitable for all ages');
GO

INSERT INTO MusicShop..RATING(Rate_Code,Rate_Description)
VALUES ('PG10','parental guidance for children under 10');
GO

SELECT * FROM MusicShop..RATING;