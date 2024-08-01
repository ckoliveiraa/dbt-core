with source as (
      select * from {{ source('db', 'magento_galderma_territory_quota') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  