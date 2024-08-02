with base as (
    select * 
    from {{ source('db', 'magento_sales_order_address') }}
)

select distinct *
from base
