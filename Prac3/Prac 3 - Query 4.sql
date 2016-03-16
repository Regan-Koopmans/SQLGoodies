USE DBSocialHire;
SELECT First_Name, Last_Name, Cell_Phone, Email_Address FROM Client
WHERE Email_Address LIKE '%@yahoo.com'