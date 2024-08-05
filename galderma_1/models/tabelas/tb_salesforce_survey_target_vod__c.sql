with base as (
    select * 
    from {{ source('db', 'salesforce_survey_target_vod__c') }}
)

select distinct *
from base
