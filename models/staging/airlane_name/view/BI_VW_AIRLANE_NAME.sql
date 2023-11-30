CREATE OR REPLACE VIEW AIRLANE.FLIGHTS.BI_VW_AIRLANE_NAME 
COMMENT = 'Informations about flights and delay and cancellations in 2023 year'
(
 AIRLINE comment 'Name of Airlane',
    AIRLINE_DOT comment 'Name of Airlane with airline code identifier',,
    AIRLINE_CODE comment 'Code of Airlane - identifier',
    FL_DATE  comment 'Flight Date (yyyymmdd)',
    ORIGIN comment 'Origin Airport',
    ORIGIN_CITY comment 'Origin Airport, City Name',
    DEST comment 'Destination Airport',
    DEST_CITY comment 'Destination Airport, City Name',
    DOT_CODE comment 'An identification number assigned by US DOT to identify a unique airline (carrier). A unique airline (carrier) is defined as one holding and reporting under the same DOT certificate regardless of its Code, Name, or holding company/corporation.',
    FL_NUMBER comment 'Flight Number',
    CRS_DEP_TIME comment 'CRS (Scheduled Departure Time by the Carrier) Departure Time (local time: hhmm)',
    DEP_TIME comment 'Actual Departure Time (local time: hhmm)',
    DEP_DELAY comment 'Difference in minutes between scheduled and actual departure time. Early departures show negative numbers.',
    TAXI_OUT comment 'Taxi Out Time, in Minutes',
    WHEELS_OFF comment 'Wheels Off Time (local time: hhmm)refers to the time at which the aircraft lifted off from the airport surface and commenced its actual flight. ',
    WHEELS_ON comment 'Wheels On Time (local time: hhmm) refers to the time at which the aircraft landed on the airport surface, and its wheels touched the ground.',
    TAXI_IN comment 'Taxi In Time, in Minutes refers to the time it takes for the aircraft to taxi from the landing runway to the gate or terminal at the airport.',
    CRS_ARR_TIME comment 'CRS Arrival Time (local time: hhmm) ',
    ARR_TIME comment 'It is the planned time at which the aircraft is expected to arrive at the destination airport.',
    ARR_DELAY comment 'Difference in minutes between scheduled and actual arrival time. Early arrivals show negative numbers.',
    CANCELLED comment 'Cancelled Flight Indicator (1=Yes)',
    CANCELLATION_CODE comment 'Specifies The Reason For Cancellation',
    DIVERTED comment 'Diverted Flight Indicator (1=Yes) it signifies that the flight has indeed been diverted from its originally planned route or destination.',
    CRS_ELAPSED_TIME comment 'CRS Elapsed Time of Flight in English can be described as the "scheduled flight duration according to the carrier''s computer reservation system, or the time of flight as per the official schedule provided by the carrier." It represents the planned duration of the flight based on the airlines computerized reservation system and the official flight schedule. This time is what the airline provides to passengers as the expected duration of the flight.',
    ELAPSED_TIME comment '	Elapsed Time of Flight, in Minutes,  refers to the total duration of a flight, expressed in minutes. It represents the actual time it takes for a flight to travel from its departure point to its destination, including all phases of the flight, such as taxiing, takeoff, cruising, and landing. This time is typically measured from the moment the aircraft starts moving on the runway for takeoff until it comes to a complete stop at the arrival gate or terminal. It is an essential metric for flight planning and scheduling.',
    AIR_TIME comment 'Flight Time, in Minutes',
    DISTANCE comment 'Distance between airports (miles)',
    DELAY_DUE_CARRIER comment 'Carrier Delay, in Minutes',
    DELAY_DUE_WEATHER comment 'Weather Delay, in Minutes',
    DELAY_DUE_NAS comment 'National Air System Delay, in Minutes,refers to the total delay time experienced by an aircraft within the National Air System. It represents the additional time, in minutes, that a flight is delayed due to factors related to the overall air traffic control system, airport operations, or airspace congestion. This delay can be caused by various factors such as weather, air traffic congestion, airport capacity issues, or other operational challenges within the national airspace system ',
    DELAY_DUE_SECURITY comment '	Security Delay, in Minutes',
    DELAY_DUE_LATE_AIRCRAFT comment 'Flight Date (yyyymmdd),  refers to the amount of time a flight is delayed due to the late arrival of the aircraft that will operate the flight. This delay occurs when the incoming aircraft, which was previously scheduled for another flight, arrives late at the departure gate, causing a delay for the subsequent flight.
For example, if a plane scheduled to depart at 2:00 PM is delayed because the aircraft assigned to it arrived at the gate 30 minutes late from a previous flight, the "Late Aircraft Delay" for that flight would be 30 minutes.',
    FL_YEAR comment 'Flight YEAR (yyyy)' ,
    FL_MONTH comment 'Flight MONTH (MM)',
    FL_DAY comment 'Flight DAY (DD)'

)
as

select * from AIRLANE_NAME 