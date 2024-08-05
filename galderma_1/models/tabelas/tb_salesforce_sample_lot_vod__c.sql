with base as (
    select * 
    from {{ source('db', 'salesforce_sample_lot_vod__c') }}
)

select distinct *
from base
