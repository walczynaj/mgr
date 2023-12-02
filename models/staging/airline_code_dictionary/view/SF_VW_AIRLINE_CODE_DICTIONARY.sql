create or replace view PC_DBT_DB.DBT_JWALC.VW_AIRLINE_CODE_DICTIONARY(
	CODE,
	DESCRIPTION
) as (
    


with AIRLINE_CODE_DICTIONARY as (

select
    CODE ,
    DESCRIPTION 

    from {{ source('flights', 'AIRLINE_CODE_DICTIONARY') }}
)

select * from AIRLINE_CODE_DICTIONARY
  );