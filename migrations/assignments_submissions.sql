-- DROP TABLE IF EXISTS assignments; 
-- DROP TABLE IF EXISTS assignment_submissions;

-- CREATE TABLE assignments (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name VARCHAR(255) NOT NULL,
--   content TEXT NOT NULL,
--   day DATE NOT NULL,
--   chapter INTEGER,
--   duration INTEGER NOT NULL
-- );

-- CREATE TABLE assignment_submissions (
--   id SERIAL PRIMARY KEY NOT NULL,
--   duration INTEGER NOT NULL,
--   submission_date DATE,
--   student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
--   assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE
-- );

DROP TABLE IF EXISTS assignments; 
DROP TABLE IF EXISTS assignment_submissions;

CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);
