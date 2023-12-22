from snowflake.snowpark import Session
from snowflake.snowpark.functions import col, avg

def main(session: Session):
    # Wczytanie danych
    df = session.table("delay_cancelations")

    # Analiza opóźnień dla każdej linii lotniczej z podziałem na przyczyny
    delay_analysis = df.groupBy("AIRLINE_CODE").agg(
        avg("ARR_DELAY").alias("average_arrival_delay"),
        avg("DELAY_DUE_CARRIER").alias("average_carrier_delay"),
        avg("DELAY_DUE_WEATHER").alias("average_weather_delay"),
        avg("DELAY_DUE_NAS").alias("average_nas_delay"),
        avg("DELAY_DUE_SECURITY").alias("average_security_delay"),
        avg("DELAY_DUE_LATE_AIRCRAFT").alias("average_late_aircraft_delay")
    ).orderBy(col("average_arrival_delay"))

    return delay_analysis
