{{
  config(
    materialized='view'
  )
}}


with DOT_CODE_DICTIONARY as (

select
    CODE ,
    DESCRIPTION 

    from {{ source('flights', 'DOT_CODE_DICTIONARY') }}
)

select * from DOT_CODE_DICTIONARY