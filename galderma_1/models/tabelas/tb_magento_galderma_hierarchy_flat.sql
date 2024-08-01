with source as (
      select * from {{ source('db', 'magento_galderma_hierarchy_flat') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  