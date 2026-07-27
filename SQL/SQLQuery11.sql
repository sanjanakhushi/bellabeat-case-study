SELECT
    AVG(TotalSteps) AS avg_daily_steps
FROM clean_daily_activity;

SELECT
    AVG(Calories) AS avg_calories
FROM clean_daily_activity;

SELECT
    DATENAME(WEEKDAY, activity_date) AS weekday,
    AVG(TotalSteps) AS avg_steps
FROM clean_daily_activity
GROUP BY DATENAME(WEEKDAY, activity_date)
ORDER BY avg_steps DESC;

