with base as (
    select * 
    from {{ source('db', 'salesforce_medical_event_vod__c') }}
)

select distinct *
from base
