with source as (
      select * from {{ source('source', 'Employee') }}
),
renamed as (
    select
        {{ adapter.quote("BusinessEntityID") }},
        {{ adapter.quote("NationalIDNumber") }},
        {{ adapter.quote("LoginID") }},
        {{ adapter.quote("OrganizationNode") }},
        {{ adapter.quote("OrganizationLevel") }},
        {{ adapter.quote("JobTitle") }},
        {{ adapter.quote("BirthDate") }},
        {{ adapter.quote("MaritalStatus") }},
        {{ adapter.quote("Gender") }},
        {{ adapter.quote("HireDate") }},
        {{ adapter.quote("SalariedFlag") }},
        {{ adapter.quote("VacationHours") }},
        {{ adapter.quote("SickLeaveHours") }},
        {{ adapter.quote("CurrentFlag") }},
        {{ adapter.quote("rowguid") }},
        {{ adapter.quote("ModifiedDate") }}

    from source
)
select * from renamed
  