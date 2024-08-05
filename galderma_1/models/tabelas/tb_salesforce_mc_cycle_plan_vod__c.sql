with base as (
    select * 
    from {{ source('db', 'salesforce_mc_cycle_plan_vod__c') }}
)

select distinct *
from base
