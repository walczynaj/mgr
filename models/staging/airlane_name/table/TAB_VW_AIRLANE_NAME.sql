{{
  config(
    materialized='table'
  )
}}


with AIRLANE_NAME as (

select
 AIRLINE ,
    AIRLINE_DOT ,
    AIRLINE_CODE ,
    FL_DATE ,
    ORIGIN ,
    ORIGIN_CITY ,
    DEST ,
    DEST_CITY ,
    DOT_CODE ,
    FL_NUMBER ,
    CRS_DEP_TIME ,
    DEP_TIME ,
    DEP_DELAY ,
    TAXI_OUT ,
    WHEELS_OFF ,
    WHEELS_ON ,
    TAXI_IN ,
    CRS_ARR_TIME ,
    ARR_TIME ,
    ARR_DELAY ,
    CANCELLED ,
    CANCELLATION_CODE ,
    DIVERTED ,
    CRS_ELAPSED_TIME ,
    ELAPSED_TIME ,
    AIR_TIME ,
    DISTANCE ,
    DELAY_DUE_CARRIER ,
    DELAY_DUE_WEATHER ,
    DELAY_DUE_NAS ,
    DELAY_DUE_SECURITY ,
    DELAY_DUE_LATE_AIRCRAFT ,
    FL_YEAR ,
    FL_MONTH ,
    FL_DAY 

    from AIRLINES.FLIGHTS.AIRLANE_NAME
)

select * from AIRLANE_NAME 