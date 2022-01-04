-- Cohort's Total Assignment Duration
-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query.


  SELECT SUM(assignment_submissions.duration) as total_duration 
  FROM students JOIN assignment_submissions ON student_id = students.id 
  WHERE name IN(SELECT students.name 
                  FROM students JOIN cohorts ON cohort_id = cohorts.id
                  WHERE cohorts.name = 'FEB12');


-- LHL solution
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';
