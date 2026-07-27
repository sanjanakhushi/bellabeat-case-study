SELECT
    Id,
    CONVERT(date, ActivityDate) AS activity_date,
    TotalSteps,
    TotalDistance,
    Calories,
    VeryActiveMinutes,
    FairlyActiveMinutes,
    LightlyActiveMinutes,
    SedentaryMinutes
INTO clean_daily_activity
FROM daily_activity;