with base as (
    select * 
    from {{ source('db', 'salesforce_child_account_vod__c') }}
)

select distinct *
from base
