with base as (
    select * 
    from {{ source('db', 'salesforce_question_response_vod__c') }}
)

select distinct *
from base