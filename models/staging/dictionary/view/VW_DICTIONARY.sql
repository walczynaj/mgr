{{
  config(
    materialized='view'
  )
}}

with DICTIONARY as (

select
    Updated_Header ,
    Source_Header ,
    Data_Type ,
    Description 

    from {{ source('flights', 'DICTIONARY') }}
)

select * from DICTIONARY