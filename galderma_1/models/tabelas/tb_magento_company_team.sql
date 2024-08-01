{{
    config(
        materialized='table',
        schema='bra_bronze_test'
    )
}}


with source as (
      select * from {{ source('db', 'magento_company_team') }}
),
renamed as (
    select
    team_id as time_id,
    name as nome,
    description as descricao,
    input_file as input_file,
    dt_processing as dt_processing
    
    from source
)
select distinct * from renamed
  