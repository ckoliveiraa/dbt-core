with source as (
      select * from {{ source('db', 'magento_galderma_occurrence_additional_info') }}
),
renamed as (
    select
        *

    from source
)
select distinct * from renamed
  