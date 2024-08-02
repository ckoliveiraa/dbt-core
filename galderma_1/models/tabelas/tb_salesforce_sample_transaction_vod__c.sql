with base as (
    select * 
    from {{ source('db', 'salesforce_sample_transaction_vod__c') }}
)

select distinct *
from base
