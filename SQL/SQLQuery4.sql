SELECT *
FROM daily_activity
WHERE TotalSteps IS NULL;

SELECT *
FROM sleep_day
WHERE TotalMinutesAsleep IS NULL;

SELECT *
FROM hourly_steps
WHERE StepTotal IS NULL;