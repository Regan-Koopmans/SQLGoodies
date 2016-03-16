USE DBSocialHire;
SELECT Complaint_reference, Complaint_Nature, Complaint_Description FROM Complaint 
WHERE (Date_Complaint BETWEEN '2009-1-1' AND '2012-12-31') AND (Complaint_Nature = 'Broken Laptop')