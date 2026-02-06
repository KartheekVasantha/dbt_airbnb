{{ config(materialized='incremental',
          unique_key='listing_id'
          ) }}

SELECT * FROM {{source('my_bronze','Listings')}}
{% if is_incremental() %}
  where START_DATE > (select ifnull(max(START_DATE),'2000-01-01') from {{ this }})
{% endif %}