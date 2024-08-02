with base as (
    select * 
    from {{ source('db', 'salesforce_user') }}
)

select distinct *
from base
