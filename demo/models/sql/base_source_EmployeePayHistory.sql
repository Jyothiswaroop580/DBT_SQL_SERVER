/*with source as (
      select * from {{ source('source', 'EmployeePayHistory') }}
),
renamed as (
    select
        {{ adapter.quote("BusinessEntityID") }},
        {{ adapter.quote("RateChangeDate") }},
        {{ adapter.quote("Rate") }},
        {{ adapter.quote("PayFrequency") }},
        {{ adapter.quote("ModifiedDate") }}

    from source
)
select * from renamed*/

select * from {{ ref('sql','sql_file') }}
  