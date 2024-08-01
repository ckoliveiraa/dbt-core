with source as (
      select * from {{ source('db', 'magento_product_balance_extension') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  