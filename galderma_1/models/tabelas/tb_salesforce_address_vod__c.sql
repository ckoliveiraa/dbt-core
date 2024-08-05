with base as (
    select * 
    from {{ source('db', 'salesforce_address_vod__c') }}
)

select distinct *
from base
