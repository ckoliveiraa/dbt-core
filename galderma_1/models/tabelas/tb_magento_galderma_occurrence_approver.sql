with source as (
      select * from {{ source('db', 'magento_galderma_occurrence_approver') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  