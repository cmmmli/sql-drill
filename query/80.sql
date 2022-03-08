SELECT
  COUNT(*) AS pv_new_visit
FROM
  sample.web_log
WHERE
  session_count = 1
