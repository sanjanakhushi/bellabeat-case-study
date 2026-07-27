SELECT
    Id,
    CONVERT(date, SleepDay) AS sleep_date,
    TotalSleepRecords,
    TotalMinutesAsleep,
    TotalTimeInBed
INTO clean_sleep_day
FROM sleep_day;