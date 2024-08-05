with base as (
    select * 
    from {{ source('db', 'salesforce_message_registration__c') }}
)

select distinct *
from base
