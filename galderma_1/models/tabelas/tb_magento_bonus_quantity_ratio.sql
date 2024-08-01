{{
    config(
        materialized='table',
        schema='bra_bronze_test'
    )
}}

with base as (
    select * 
    from {{ source('db', 'magento_bonus_quantity_ratio') }}
)

select distinct *
from base
