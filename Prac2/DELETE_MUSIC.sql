USE MusicShop;

DELETE FROM MusicShop..MUSIC
WHERE Music_Title = 'This is not a movie';

SELECT * FROM MusicShop..MUSIC;