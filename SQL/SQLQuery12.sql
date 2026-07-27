SELECT
    CASE
        WHEN TotalSteps < 5000 THEN 'Sedentary'
        WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderately Active'
        ELSE 'Highly Active'
    END AS activity_level,
    COUNT(*) AS total_records
FROM clean_daily_activity
GROUP BY
    CASE
        WHEN TotalSteps < 5000 THEN 'Sedentary'
        WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderately Active'
        ELSE 'Highly Active'
    END;

    SELECT
    DATEPART(HOUR, activity_hour) AS hour_of_day,
    AVG(StepTotal) AS avg_steps
FROM clean_hourly_steps
GROUP BY DATEPART(HOUR, activity_hour)
ORDER BY hour_of_day;