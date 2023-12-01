
CREATE OR REPLACE VIEW AIRLINES.FLIGHTS.BI_VW_DOT_CODE_DICTIONARY  
COMMENT = 'DOT Code dictionary'
(
    CODE  comment 'An identification number assigned by US DOT to identify a unique airline (carrier). A unique airline (carrier) is defined as one holding and reporting under the same DOT certificate regardless of its Code, Name, or holding company/corporation.',
    DESCRIPTION comment 'DOT Code description')
    
AS SELECT *
from AIRLINES.FLIGHTS.DOT_CODE_DICTIONARY