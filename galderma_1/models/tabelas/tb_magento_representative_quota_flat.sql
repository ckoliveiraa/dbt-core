
with base as (
    select * 
    from {{ source('db', 'magento_representative_quota_flat') }}
)

select distinct *
from base
 