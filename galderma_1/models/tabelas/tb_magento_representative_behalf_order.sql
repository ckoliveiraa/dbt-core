with source as (
      select * from {{ source('db', 'magento_representative_behalf_order') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  