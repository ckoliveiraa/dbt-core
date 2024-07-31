{{
    config(
        materialized='table',
        schema='bra_bronze_test'
    )
}}

with base as (
    select * 
    from {{ source('db', 'magento_magento_rma_grid') }}
)

select distinct *
from base
