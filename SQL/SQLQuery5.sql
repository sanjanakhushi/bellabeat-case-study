SELECT Id, ActivityDate, COUNT(*) AS duplicate_count
FROM daily_activity
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

SELECT Id, SleepDay, COUNT(*) AS duplicate_count
FROM sleep_day
GROUP BY Id, SleepDay
HAVING COUNT(*) > 1;

SELECT Id, ActivityHour, COUNT(*) AS duplicate_count
FROM hourly_steps
GROUP BY Id, ActivityHour
HAVING COUNT(*) > 1;