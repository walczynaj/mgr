WITH RouteDelays AS (
    SELECT
        ORIGIN,
        DEST,
        COUNT(*) AS FLIGHT_COUNT,
        SUM(ARR_DELAY) AS TOTAL_ARR_DELAY
    FROM
        delay_cancelations
    GROUP BY
        ORIGIN, DEST
),
RankedRoutes AS (
    SELECT
        ORIGIN,
        DEST,
        TOTAL_ARR_DELAY / FLIGHT_COUNT AS AVG_DELAY,
        FLIGHT_COUNT,
        DENSE_RANK() OVER (ORDER BY FLIGHT_COUNT DESC) AS FLIGHT_RANK
    FROM
        RouteDelays
)
SELECT
    ORIGIN,
    DEST,
    AVG_DELAY,
    FLIGHT_COUNT
FROM
    RankedRoutes
WHERE
    FLIGHT_RANK <= 100
ORDER BY
    AVG_DELAY, FLIGHT_COUNT DESC;
