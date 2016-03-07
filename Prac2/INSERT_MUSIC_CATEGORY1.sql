USE MusicShop;
GO

INSERT INTO MusicShop..MUSIC_CATEGORY(Category_Name, Category_Description)
VALUES ('Action','Action packed movies');
GO

INSERT INTO MusicShop..MUSIC_CATEGORY(Category_Name, Category_Description)
VALUES ('Thriller','Spine chilling and full of suspense');
GO


DELETE FROM MusicShop..MUSIC_CATEGORY
WHERE Category_ID > 2;
SELECT * FROM MusicShop..MUSIC_CATEGORY;