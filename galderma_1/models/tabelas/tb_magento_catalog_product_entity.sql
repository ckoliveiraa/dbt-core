with source as (
      select * from {{ source('db', 'magento_catalog_product_entity') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  