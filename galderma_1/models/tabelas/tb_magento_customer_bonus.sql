with base as (
    select * 
    from {{ source('db', 'magento_customer_bonus') }}
)

select distinct *
from base
