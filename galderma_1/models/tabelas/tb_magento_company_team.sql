with source as (
      select * from {{ source('db', 'magento_company_team') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  