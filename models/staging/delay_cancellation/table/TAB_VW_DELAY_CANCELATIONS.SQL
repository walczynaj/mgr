{{
  config(
    materialized='table'
  )
}}


with YEAR2021 as (

    select * from {{ ref('VW_YEAR2021') }}

),

YEAR2022 as (

    select * from {{ ref('VW_YEAR2022') }}

),

YEAR2023 as (

    select * from {{ ref('VW_YEAR2023') }}

),

DELAY_CANCELLATIONS as (
        select * from YEAR2021
            union all
        select * from VW_YEAR2022
            union all
        select * from YEAR2023

)

select * from DELAY_CANCELLATIONS