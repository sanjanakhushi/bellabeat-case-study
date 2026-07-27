SELECT
    a.Id,
    a.activity_date,
    DATENAME(WEEKDAY, a.activity_date) AS weekday,
    a.TotalSteps,
    a.TotalDistance,
    a.Calories,
    a.VeryActiveMinutes,
    a.FairlyActiveMinutes,
    a.LightlyActiveMinutes,
    a.SedentaryMinutes,
    s.TotalMinutesAsleep,
    s.TotalTimeInBed
INTO tableau_activity_summary
FROM clean_daily_activity a
LEFT JOIN clean_sleep_day s
ON a.Id = s.Id
AND a.activity_date = s.sleep_date;

