-- We need to know which assignments are causing the most assistance requests.

-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT assignments.id, assignments.name, day, chapter, COUNT(assistance_requests.*) as total_assistances
  FROM assignments
  JOIN assistance_requests ON Assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.*) DESC;
