with base as (
    select * 
    from {{ source('db', 'magento_sales_order_status_history') }}
)

select distinct *
from base
