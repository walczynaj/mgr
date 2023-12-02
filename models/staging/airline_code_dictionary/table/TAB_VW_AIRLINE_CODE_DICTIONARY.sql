{{
  config(
    materialized='table'
  )
}}


with AIRLINE_CODE_DICTIONARY as (

select
    CODE ,
    DESCRIPTION 

    from AIRLINES.FLIGHTS.AIRLINE_CODE_DICTIONARY
)

select * from AIRLINE_CODE_DICTIONARY