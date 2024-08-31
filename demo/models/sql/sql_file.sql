--select top (50) * from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]


select * from {{ source('source', 'JobCandidate') }}