SELECT avg(duration_table) as average_assistance_request_duration
FROM (
  SELECT (assistance_requests.completed_at - assistance_requests.started_at) AS duration_table
  FROM assistance_requests
  ) as totals_table;
