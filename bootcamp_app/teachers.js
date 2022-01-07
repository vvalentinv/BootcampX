const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
  FROM teachers
  JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
  WHERE cohorts.name LIKE '%' || $1 || '%'
  GROUP BY cohorts.name, teachers.name
  ORDER BY teachers.name;
`, [process.argv[2]])
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}:  ${user.teacher}`);
    })
  })
  .catch(err => console.error('query error', err.stack));
