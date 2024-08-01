with source as (
      select * from {{ source('db', 'magento_quote_item') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  