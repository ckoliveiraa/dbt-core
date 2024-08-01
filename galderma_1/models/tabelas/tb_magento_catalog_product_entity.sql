with source as (
      select * from {{ source('db', 'magento_catalog_product_entity') }}
),
renamed as (
    select
        {{ adapter.quote("id") }},
        {{ adapter.quote("sku") }},
        {{ adapter.quote("name") }},
        {{ adapter.quote("attribute_set_id") }},
        {{ adapter.quote("price") }},
        {{ adapter.quote("status") }},
        {{ adapter.quote("type_id") }},
        {{ adapter.quote("created_at") }},
        {{ adapter.quote("updated_at") }},
        {{ adapter.quote("options") }},
        {{ adapter.quote("tier_prices") }},
        {{ adapter.quote("multiplier_factor") }},
        {{ adapter.quote("input_file") }},
        {{ adapter.quote("dt_processing") }}

    from source
)
select distinct * from renamed
  