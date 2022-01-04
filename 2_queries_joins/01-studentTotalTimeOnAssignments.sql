-- Get the total amount of time that a student has spent on all assignments
-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column.
SELECT SUM(assignment_submissions.duration) as total_duration 
  FROM students JOIN assignment_submissions ON student_id = students.id 
  WHERE name = 'Ibrahim Schimmel';
