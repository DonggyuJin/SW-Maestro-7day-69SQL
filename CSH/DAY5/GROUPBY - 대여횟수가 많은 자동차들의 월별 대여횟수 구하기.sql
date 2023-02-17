SELECT MONTH(START_DATE) as MONTH, CAR_ID, count(HISTORY_ID) as RECORD
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID in (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE DATE_FORMAT(START_DATE, "%Y-%m") between "2022-08" and "2022-10"
    GROUP BY CAR_ID
    HAVING count(HISTORY_ID) >= 5
    ) and DATE_FORMAT(START_DATE, "%Y-%m") between "2022-08" and "2022-10"
GROUP BY CAR_ID, MONTH
HAVING count(HISTORY_ID) > 0
ORDER BY MONTH, CAR_ID DESC;