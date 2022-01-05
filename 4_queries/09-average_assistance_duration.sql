-- Cohort Average Assistance Duration
-- We also need to know the average total amount of time being spent on an assistance request for each cohort. 
-- This is just the average of the total_duration column from the previous query.

-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name, SUM(completed_at - started_at) as total_duration
  FROM assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE completed_at IS NOT NULL
  GROUP BY cohorts.name
  ORDER BY SUM(completed_at - started_at)
) as total_duration_per_cohorts;
