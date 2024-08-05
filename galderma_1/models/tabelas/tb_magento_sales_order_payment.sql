with base as (
    select * 
    from {{ source('db', 'magento_sales_order_payment') }}
)

select distinct *
from base
