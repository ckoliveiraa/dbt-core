with base as (
    select * 
    from {{ source('db', 'magento_sales_order') }}
)

select distinct *
from base
