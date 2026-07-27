SELECT
    Id,
    CONVERT(datetime, ActivityHour) AS activity_hour,
    StepTotal
INTO clean_hourly_steps
FROM hourly_steps;