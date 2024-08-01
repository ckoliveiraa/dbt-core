with source as (
      select * from {{ source('db', 'magento_customer_group') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed