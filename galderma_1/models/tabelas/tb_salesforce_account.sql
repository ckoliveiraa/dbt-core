with base as (
    select * 
    from {{ source('db', 'salesforce_account') }}
)

select distinct *
from base
