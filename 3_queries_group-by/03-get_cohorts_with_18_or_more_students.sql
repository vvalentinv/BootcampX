-- Large Cohorts
-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name, COUNT(students.*) AS student_count
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  HAVING COUNT(students.*) >= 18
  ORDER BY COUNT(students.*);
