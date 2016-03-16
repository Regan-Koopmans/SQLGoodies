USE DBSocialHire;
SELECT Item_Name, Item_Specification, Item_Deposit_Fee FROM Item
WHERE Item_Deposit_Fee < 350 AND (Client_ID = 1 OR Client_ID = 2)