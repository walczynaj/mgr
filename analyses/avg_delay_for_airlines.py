from snowflake.snowpark import Session
from snowflake.snowpark.functions import col
from snowflake.snowpark.types import StringType
from snowflake.snowpark.functions import col, avg

# Definiowanie funkcji main dla Snowflake Python Worksheet
def main(session: Session):
    # Wczytanie danych
    df = session.table("delay_cancelations")

    # Przykładowe przetwarzanie danych
    df = df.filter(col("FL_YEAR") >= 2019)  # Filtruj dane od 2019 roku

    #  średnie opóźnienie dla każdej linii lotniczej
    avg_delay_per_airline = df.groupBy("AIRLINE_CODE").agg(avg("ARR_DELAY").alias("average_delay"))

    return avg_delay_per_airline
