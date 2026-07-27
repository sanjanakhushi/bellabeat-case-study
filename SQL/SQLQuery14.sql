SELECT
    DATEPART(HOUR, activity_hour) AS activity_hour,
    AVG(StepTotal) AS avg_steps
INTO tableau_hourly_summary
FROM clean_hourly_steps
GROUP BY DATEPART(HOUR, activity_hour);