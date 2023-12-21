from snowflake.snowpark.functions import col, avg, month, when
from snowflake.snowpark import Session

def main(session: Session):
    # Wczytanie danych
    df = session.table("delay_cancelations")

    # Określenie pory roku na podstawie miesiąca
    df = df.withColumn('SEASON', 
                       when(month(col('FL_DATE')) <= 2, 'Winter')
                       .when(month(col('FL_DATE')) <= 5, 'Spring')
                       .when(month(col('FL_DATE')) <= 8, 'Summer')
                       .otherwise('Fall'))

    # Analiza średnich opóźnień ogólnych oraz spowodowanych przez pogodę w zależności od pory roku
    avg_delay_per_season = df.groupBy("SEASON").agg(
        avg("ARR_DELAY").alias("average_delay"),
        avg("DELAY_DUE_WEATHER").alias("average_weather_delay")
    )

    return avg_delay_per_season
