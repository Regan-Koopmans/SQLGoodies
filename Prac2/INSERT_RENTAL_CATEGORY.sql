USE MusicShop;
GO

DELETE FROM MusicShop..RENTAL_CATEGORY
WHERE Rental_Cat_ID > 2;

INSERT INTO MusicShop..RENTAL_CATEGORY(Rental_Cat_Description,Daily_Rental_Amount)
VALUES ('Old',10);
GO


INSERT INTO MusicShop..RENTAL_CATEGORY(Rental_Cat_Description,Daily_Rental_Amount)
VALUES ('New',20);
GO

DELETE FROM MusicShop..RENTAL_CATEGORY
WHERE Rental_Cat_ID > 2;
SELECT * FROM MusicShop..RENTAL_CATEGORY;