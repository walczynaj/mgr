{{
  config(
    materialized='view'
  )
}}


with AIRLINE_CODE_DICTIONARY as (

select
    CODE ,
    DESCRIPTION 

    from {{ source('flights', 'AIRLINE_CODE_DICTIONARY') }}
)

select * from AIRLINE_CODE_DICTIONARY