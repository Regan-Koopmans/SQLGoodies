USE DBSocialHire;

SELECT Item.Item_Name, Rented_Item.Rented_Start_Date, Rented_Item.Rented_End_Date
FROM Item
LEFT OUTER JOIN Rented_Item
ON Item.Item_ID = Rented_Item.Item_ID
GO