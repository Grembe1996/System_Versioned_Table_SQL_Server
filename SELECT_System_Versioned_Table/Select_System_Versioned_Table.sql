/* Änderungen in einem bestimmten Zeitraum 
 (geschlossenes Zeitintervall)*/
select
    *
from
    Employee FOR SYSTEM_TIME BETWEEN '1900-01-01 00:00:00.0000000'
    AND '9999-01-01 00:00:00.0000000'
WHERE
    PerNo = 1
ORDER BY
    Sys_Start;

/* Gesamte Historie */
select
    *
from
    Employee FOR SYSTEM_TIME ALL
WHERE
    PerNo = 1
ORDER BY
    Sys_Start;

/* Änderungen deren gesamte Gültigkeitsdauer 
 in einem bestimmten Zeitraum liegen */
select
    *
from
    Employee FOR SYSTEM_TIME CONTAINED IN (
        '1900-01-01 00:00:00.0000000',
        '2024-10-02 09:01:39.9430539'
    )
WHERE
    PerNo = 1
ORDER BY
    Sys_Start;

/* Änderungen in einem bestimmten Zeitraum */
select
    *
from
    Employee FOR SYSTEM_TIME
FROM
    '1900-01-01 00:00:00.0000000' TO '2024-10-02 09:01:39.9430539'
WHERE
    PerNo = 1
ORDER BY
    Sys_Start;

/* Datensätze, die zu diesem Zeitpunkt gültig sind */
select
    *
from
    Employee FOR SYSTEM_TIME AS OF '2024-10-02 09:01:39.9430539'
WHERE
    PerNo = 1
ORDER BY
    Sys_Start;