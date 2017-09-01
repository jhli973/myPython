/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[NAME]
  FROM [PlayStation].[dbo].[tbl_A]


  SELECT TOP (1000) 
       [ID] AS [Patient.Identity],
       [NAME] as 'Patient.Name'
  FROM [PlayStation].[dbo].[tbl_A]
  FOR JSON PATH, ROOT('Patients')

  SELECT TOP (1000) 
       [ID] AS [Patient.Identity],
       [NAME] as 'Patient.Name'
  FROM [PlayStation].[dbo].[tbl_A]
  FOR JSON PATH

 SELECT TOP (1000) 
       [ID] AS [Patient.Identity],
       [NAME] as 'Patient.Name'
  FROM [PlayStation].[dbo].[tbl_A]
  FOR JSON AUTO

-- OPENJSON
DECLARE @json varchar(max)

SET @json = N'{"Identity": 1, "Name": "Nicole"}'
SELECT * FROM OPENJSON(@json)


-- JSON_MODIFY
DECLARE @j varchar(max)

SET @j = N'{"Identity": 1, "Name": "Nicole", "Skills":["SQL", "Python"]}'
print @j
--Update
SET @j = JSON_MODIFY(@j, '$.Identity', 2)
print @j
--Insert
SET @j = JSON_MODIFY(@j, '$.Age', 27)
print @j

--Delete
SET @j = JSON_MODIFY(@j, '$.Age', null)
print @j

SET @j = JSON_MODIFY(@j, 'append $.Skills','Azure')
print @j





