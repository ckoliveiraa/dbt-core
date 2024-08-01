with source as (
      select * from {{ source('db', 'magento_quote_address') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  