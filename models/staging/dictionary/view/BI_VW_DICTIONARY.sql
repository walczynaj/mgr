CREATE OR REPLACE VIEW AIRLINES.FLIGHTS.BI_VW_DICTIONARY 
COMMENT = 'Informations about data'
(
    Updated_Header comment 'Name of columns',
    Source_Header comment 'Source name of columns',
    Data_Type comment 'Types of data',
    Description comment 'Description of columns' )
    
AS SELECT *
from AIRLINES.FLIGHTS.DICTIONARY

