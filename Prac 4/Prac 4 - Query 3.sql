USE DBSocialHire;

SELECT Client.Client_ID,Item.Item_Name
FROM Item
RIGHT OUTER JOIN Client
ON Item.Client_ID = Client.Client_ID