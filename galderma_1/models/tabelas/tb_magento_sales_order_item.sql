with base as (
    select * 
    from {{ source('db', 'magento_sales_order_item') }}
)

select distinct *
from base
