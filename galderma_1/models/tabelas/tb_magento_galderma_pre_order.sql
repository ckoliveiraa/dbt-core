with source as (
      select * from {{ source('db', 'magento_galderma_pre_order') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  