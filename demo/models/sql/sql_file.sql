--select top (50) * from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]


select top (10) * from {{ source('source', 'EmployeePayHistory') }}