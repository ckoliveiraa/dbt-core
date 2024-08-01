with source as (
      select * from {{ source('db', 'magento_inventory_source') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  