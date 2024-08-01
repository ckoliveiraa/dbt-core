with source as (
      select * from {{ source('db', 'magento_magento_rma_status_history') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  