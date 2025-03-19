{{ config(materialized='table') }}

with source_data as (

    select 
          date,
          customer_id,
           c.city,
           category,
           product,
          unit_price,
           quantity,
           sales_amount,
           used_discount,
           discount_amount,
           final_sales ,
           latitude,
           longitude   
    
     as first_city from {{ ref("coffee_model") }} as c inner join
    {{ref("saudi_model")}} as s on c.city = s.city

)

select *
from source_data