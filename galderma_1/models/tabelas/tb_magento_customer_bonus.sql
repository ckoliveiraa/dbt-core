with source as (
      select * from {{ source('db', 'magento_customer_bonus') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  