
-- Use the `ref` function to select from other models

select *
from {{ ref('sql_file') }}
where BusinessEntityID is not null;