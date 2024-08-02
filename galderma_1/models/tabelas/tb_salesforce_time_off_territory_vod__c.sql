with base as (
    select * 
    from {{ source('db', 'salesforce_time_off_territory_vod__c') }}
)

select distinct *
from base
