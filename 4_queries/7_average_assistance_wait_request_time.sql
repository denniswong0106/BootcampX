SELECT avg(started_at - created_at)
 FROM assistance_requests
 JOIN students ON student_id = students.id
 ;