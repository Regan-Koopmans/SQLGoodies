USE DBSocialHire;

SELECT Client.Client_ID, Client.First_Name, ClientAudit_Log.Audit_Description, ClientAudit_Log.Audit_Date
FROM Client
INNER JOIN ClientAudit_Log
ON Client.Client_ID = ClientAudit_Log.Client_ID
WHERE ClientAudit_Log.Audit_Description = 'Deactivated Profile'
GO