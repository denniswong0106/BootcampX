SELECT 
  assignments.id,
  assignments.day,
  assignments.chapter,
  assignments.name,
  count (assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC
;




-- SELECT assignment_id, count (assistance_requests.*)
-- FROM assistance_requests
-- GROUP BY assignment_id;