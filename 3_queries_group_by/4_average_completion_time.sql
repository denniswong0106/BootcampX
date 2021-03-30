SELECT 
  students.name as student,
  sum(assignment_submissions.duration) / count(assignments.*)
    as average_assignment_duration
FROM students
FULL OUTER JOIN cohorts ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date is NULL
GROUP BY student
-- ORDER BY duration;
ORDER BY average_assignment_duration DESC;