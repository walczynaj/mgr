
CREATE OR REPLACE VIEW AIRLINES.FLIGHTS.BI_VW_DELAY_CANCELATIONS  
COMMENT = 'Data about delays and flight cancellations'
(
     FL_DATE comment 'Flight Date (yyyymmdd)',
    AIRLINE_CODE  comment 'Code of Airlane - identifier',
      DOT_CODE  comment 'An identification number assigned by US DOT to identify a unique airline (carrier). A unique airline (carrier) is defined as one holding and reporting under the same DOT certificate regardless of its Code, Name, or holding company/corporation.',
    FL_NUMBER  comment 'Flight Number',
    ORIGIN comment 'Origin Airport',
    ORIGIN_CITY  comment 'Origin Airport, City Name',
    DEST  comment 'Destination Airport',
    DEST_CITY comment 'Destination Airport, City Name',
    CRS_DEP_TIME  comment 'CRS (Scheduled Departure Time by the Carrier) Departure Time (local time: hhmm)',
    DEP_TIME comment 'Actual Departure Time (local time: hhmm)',
    DEP_DELAY  comment 'Difference in minutes between scheduled and actual departure time. Early departures show negative numbers.',
    TAXI_OUT  comment 'Taxi Out Time, in Minutes',
    WHEELS_OFF  comment 'Wheels Off Time (local time: hhmm)refers to the time at which the aircraft lifted off from the airport surface and commenced its actual flight. ',
    WHEELS_ON comment 'Wheels On Time (local time: hhmm) refers to the time at which the aircraft landed on the airport surface, and its wheels touched the ground.',
    TAXI_IN  comment 'Taxi In Time, in Minutes refers to the time it takes for the aircraft to taxi from the landing runway to the gate or terminal at the airport.',
    CRS_ARR_TIME  comment 'CRS Arrival Time (local time: hhmm) ',
    ARR_TIME  comment 'It is the planned time at which the aircraft is expected to arrive at the destination airport.',
    ARR_DELAY comment 'Difference in minutes between scheduled and actual arrival time. Early arrivals show negative numbers.',
    CANCELLED comment 'Cancelled Flight Indicator (1=Yes)',
    CANCELLATION_CODE  comment 'Specifies The Reason For Cancellation',
    DIVERTED comment 'Diverted Flight Indicator (1=Yes) it signifies that the flight has indeed been diverted from its originally planned route or destination.',
    CRS_ELAPSED_TIME comment 'CRS Elapsed Time of Flight in English can be described as the scheduled flight duration according to the carriers computer reservation system',
    ELAPSED_TIME comment '	Elapsed Time of Flight, in Minutes',
    AIR_TIME comment 'Flight Time, in Minutes',
    DISTANCE comment 'Distance between airports (miles)',
    DELAY_DUE_CARRIER comment 'Carrier Delay, in Minutes',
    DELAY_DUE_WEATHER comment 'Weather Delay, in Minutes',
    DELAY_DUE_NAS comment 'National Air System Delay, in Minutes',
    DELAY_DUE_SECURITY comment 'Security Delay, in Minutes',
    DELAY_DUE_LATE_AIRCRAFT comment 'Flight Date (yyyymmdd),  refers to the amount of time a flight is delayed due to the late arrival of the aircraft that will operate the flight.' ,
    FL_YEAR comment 'Flight YEAR (yyyy)',
    FL_MONTH comment 'Flight MONTH (MM)',
    FL_DAY comment 'Flight DAY (DD)'
    )
    
AS SELECT *
from AIRLINES.FLIGHTS.DELAY_CANCELATIONS