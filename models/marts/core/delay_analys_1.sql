
with number_of_flights_per_airline as
( select count(op.fl_number) as fl_no, op.airline_code , ac.description
FROM 
    PC_DBT_DB.DBT_JWALC.TAB_VW_AIRLINE_CODE_DICTIONARY ac
JOIN 
    PC_DBT_DB.DBT_JWALC.TAB_VW_DELAY_CANCELATIONS op ON ac.Code = op.Airline_Code

group by airline_code, description)
,

number_of_flights_per_airline_delays as
( select count(op.fl_number) as fl_no_del, op.airline_code , ac.description
FROM 
    PC_DBT_DB.DBT_JWALC.TAB_VW_AIRLINE_CODE_DICTIONARY ac
JOIN 
    PC_DBT_DB.DBT_JWALC.TAB_VW_DELAY_CANCELATIONS op ON ac.Code = op.Airline_Code
where dep_delay is not null and dep_delay > 0
group by airline_code, description)

,

number_of_flights_per_airline_cancelled as
( select count(op.fl_number) as fl_no_can, op.airline_code , ac.description
FROM 
    PC_DBT_DB.DBT_JWALC.TAB_VW_AIRLINE_CODE_DICTIONARY ac
JOIN 
    PC_DBT_DB.DBT_JWALC.TAB_VW_DELAY_CANCELATIONS op ON ac.Code = op.Airline_Code
where cancelled is not null and cancelled > 0
group by airline_code, description)


select  a.airline_code, a.description , a.fl_no, b.fl_no_del , (b.fl_no_del/a.fl_no) AS FL_DEL_IND,  c.fl_no_can,  (c.fl_no_can/a.fl_no) as FL_CAN_IND

from 
number_of_flights_per_airline_delays b
left join number_of_flights_per_airline a
on a.airline_code = b.airline_code
left join number_of_flights_per_airline_cancelled c
on a.airline_code = c.airline_code
order by FL_DEL_IND desc, FL_CAN_IND desc