with source as (
      select * from {{ source('db', 'magento_landing_zone_summary_log') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  