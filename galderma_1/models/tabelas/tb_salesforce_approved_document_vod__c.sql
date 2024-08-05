with base as (
    select * 
    from {{ source('db', 'salesforce_approved_document_vod__c') }}
)

select distinct *
from base
