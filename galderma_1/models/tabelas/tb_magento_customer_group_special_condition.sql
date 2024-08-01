with source as (
      select * from {{ source('db', 'magento_customer_group_special_condition') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  