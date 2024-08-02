with base as (
    select * 
    from {{ source('db', 'magento_salesrule') }}
)

select distinct *
from base
