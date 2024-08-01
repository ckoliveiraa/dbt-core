with source as (
      select * from {{ source('db', 'magento_purchase_order') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  