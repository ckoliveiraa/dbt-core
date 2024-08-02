with base as (
    select * 
    from {{ source('db', 'salesforce_sent_content__c') }}
)

select distinct *
from base
