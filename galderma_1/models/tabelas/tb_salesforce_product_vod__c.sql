with base as (
    select * 
    from {{ source('db', 'salesforce_product_vod__c') }}
)

select distinct *
from base
