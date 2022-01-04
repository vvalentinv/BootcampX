-- Select their id, name, email, and cohort_id.
-- Order them by cohort_id.
-- SELECT id, name, email, cohort_id
--   FROM students
--   WHERE github IS NULL
--   ORDER BY cohort_id;


-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- GROUP BY students.name, students.end_date
-- HAVING count(assignment_submissions.*) < 100;

-- OR 

-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;
