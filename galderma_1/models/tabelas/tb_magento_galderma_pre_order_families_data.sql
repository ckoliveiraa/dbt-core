with source as (
      select * from {{ source('db', 'magento_galderma_pre_order_families_data') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  