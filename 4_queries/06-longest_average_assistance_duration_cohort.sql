-- Cohort With Longest Assistances
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE completed_at IS NOT NULL
GROUP BY cohorts.name
ORDER BY AVG(completed_at - started_at) DESC
LIMIT 1;
