------- AIRLANE_NAMES

CREATE OR REPLACE TABLE AIRLINES.FLIGHTS.AIRLANE_NAME (
    AIRLINE VARCHAR(100),
    AIRLINE_DOT VARCHAR(100),
    AIRLINE_CODE VARCHAR(100),
    FL_DATE DATE,
    ORIGIN VARCHAR(255),
    ORIGIN_CITY VARCHAR(255),
    DEST VARCHAR(100),
    DEST_CITY VARCHAR(100),
    DOT_CODE NUMBER,
    FL_NUMBER NUMBER,
    CRS_DEP_TIME NUMBER,
    DEP_TIME NUMBER,
    DEP_DELAY NUMBER,
    TAXI_OUT NUMBER,
    WHEELS_OFF NUMBER,
    WHEELS_ON NUMBER,
    TAXI_IN NUMBER,
    CRS_ARR_TIME NUMBER,
    ARR_TIME NUMBER,
    ARR_DELAY NUMBER,
    CANCELLED NUMBER,
    CANCELLATION_CODE VARCHAR(100),
    DIVERTED NUMBER,
    CRS_ELAPSED_TIME NUMBER,
    ELAPSED_TIME NUMBER,
    AIR_TIME NUMBER,
    DISTANCE NUMBER,
    DELAY_DUE_CARRIER NUMBER,
    DELAY_DUE_WEATHER NUMBER,
    DELAY_DUE_NAS NUMBER,
    DELAY_DUE_SECURITY NUMBER,
    DELAY_DUE_LATE_AIRCRAFT NUMBER,
    FL_YEAR NUMBER,
    FL_MONTH NUMBER,
    FL_DAY NUMBER
);
