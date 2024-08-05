with base as (
    select * 
    from {{ source('db', 'salesforce_tsf_vod__c') }}
)

select distinct *
from base
