with YEAR2022 as (

select
  FL_DATE ,
    AIRLINE_CODE ,
    DOT_CODE ,
    FL_NUMBER ,
    ORIGIN ,
    ORIGIN_CITY ,
    DEST ,
    DEST_CITY ,
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

    from AIRLINES.FLIGHTS.YEAR2022
)

select * from YEAR2022