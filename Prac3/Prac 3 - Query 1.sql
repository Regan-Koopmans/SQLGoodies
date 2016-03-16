USE DBSocialHire;

SELECT * FROM Client WHERE Client_ID IN (SELECT Client_Rate_ID FROM Client_Rating
WHERE Rate_Level > 3);