{{ config(materialized='table') }}

with retunrs as (
    
    select * from {{ ref('returns_seed') }} 
),
final as (
    select
     retunrs.RETURNED as returned,
     retunrs.ORDERID as order_id
    from 
    retunrs
)

select * from final