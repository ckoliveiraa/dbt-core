{{
    config(
        materialized='table',
        schema='bra_bronze_test'
    )
}}


with base as (
    select *
    {{source('db','magento_customer_entity')}}
)

select distinct * 
    from base