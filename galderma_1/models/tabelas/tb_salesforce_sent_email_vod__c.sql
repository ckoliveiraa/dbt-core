with base as (
    select * 
    from {{ source('db', 'salesforce_sent_email_vod__c') }}
)

select distinct *
from base
