{{
  config(
    materialized='table'
  )
}}


with DOT_CODE_DICTIONARY as (

select
    CODE ,
    DESCRIPTION 

    from AIRLINES.FLIGHTS.DOT_CODE_DICTIONARY
)

select * from DOT_CODE_DICTIONARY