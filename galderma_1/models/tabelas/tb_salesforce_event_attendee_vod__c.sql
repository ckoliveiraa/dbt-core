with base as (
    select * 
    from {{ source('db', 'salesforce_event_attendee_vod__c') }}
)

select distinct *
from base
