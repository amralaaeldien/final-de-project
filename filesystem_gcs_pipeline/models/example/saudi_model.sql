
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

with source_data as (

    select * from {{ source('staging','saudi') }}

)

select *
from source_data