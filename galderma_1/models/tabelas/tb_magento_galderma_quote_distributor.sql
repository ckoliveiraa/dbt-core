with source as (
      select * from {{ source('db', 'magento_galderma_quote_distributor') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  