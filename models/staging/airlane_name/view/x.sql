with x as (
select * from {{ref('VW_AIRLANE_NAME')}}
)

select  * from x