--select top (50) * from [AdventureWorks2022].[HumanResources].[EmployeePayHistory]
{{
    config(
        materialized='incremental'
    )
}}

select * from {{ source('source', 'JobCandidate') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- (uses >= to include records whose timestamp occurred since the last run of this model)
  -- (If event_time is NULL or the table is truncated, the condition will always be true and load all records)
where ModifiedDate >= (select coalesce(max(ModifiedDate),'1900-01-01') from {{ this }} )

{% endif %}