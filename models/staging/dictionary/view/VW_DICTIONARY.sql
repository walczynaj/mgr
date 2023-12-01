with DICTIONARY as (

select
    Updated_Header ,
    Source_Header ,
    Data_Type ,
    Description 

    from AIRLINES.FLIGHTS.DICTIONARY
)

select * from DICTIONARY