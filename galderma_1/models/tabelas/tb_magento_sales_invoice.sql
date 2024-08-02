with base as (
    select * 
    from {{ source('db', 'magento_sales_invoice') }}
)

select distinct *
from base
