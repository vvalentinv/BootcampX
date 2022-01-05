-- Assistance Requests Data
-- Each assistance request is related to a bunch of data like a teacher, student, assignment, and more. 
-- We want to be able to see all important data about an assistance request.

-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT teachers.name, students.name, assignments.name, completed_at - started_at AS duration
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
WHERE completed_at IS NOT NULL
ORDER BY completed_at - started_at;
