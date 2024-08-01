with source as (
      select * from {{ source('db', 'magento_bonus_quantity_ratio') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  