SELECT
    Id,
    CONVERT(date, ActivityDate) AS activity_date,
    TotalSteps,
    Calories
FROM daily_activity;

SELECT
    Id,
    CONVERT(date, SleepDay) AS sleep_date,
    TotalMinutesAsleep
FROM sleep_day;

SELECT
    Id,
    CONVERT(datetime, ActivityHour) AS activity_hour,
    StepTotal
FROM hourly_steps;