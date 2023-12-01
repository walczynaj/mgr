CREATE OR REPLACE VIEW AIRLINES.FLIGHTS.BI_VW_AIRLINE_CODE_DICTIONARY  
COMMENT = 'Informations about flights and delay and cancellations in 2023 year'
(
    CODE comment 'Code of Airlane',
    DESCRIPTION comment 'Arline description')
    
AS SELECT *
from AIRLINES.FLIGHTS.AIRLINE_CODE_DICTIONARY
