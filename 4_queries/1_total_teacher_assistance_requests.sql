-- SELECT (SELECT count(assistance_requests.*) as total_assistances
--  FROM assistance_requests), teachers.name
--  FROM teachers
--  WHERE teachers.name = 'Waylon Boehm'
-- ;


SELECT count(assistance_requests.*) as total_assistances, teachers.name
  FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  WHERE teachers.name = 'Waylon Boehm'
  GROUP BY teachers.name
;