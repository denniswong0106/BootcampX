const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

let entry = '%' + process.argv[2] + '%';

pool.query(`
SELECT DISTINCT teachers.name as name, cohorts.name as cohort
 FROM assistance_requests
 JOIN teachers ON teachers.id = teacher_id
 JOIN students ON students.id = student_id
 JOIN cohorts ON cohorts.id = cohort_id
 WHERE cohorts.name LIKE $1
 ORDER BY teachers.name;`, [entry])
.then((res => {
  res.rows.forEach((row) => {
  console.log(`${row.cohort}: ${row.name}`);
  });
})
)
.catch(err => console.error('query error', err.stack));
