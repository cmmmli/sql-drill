SELECT
  COUNT(*) AS session
FROM (
  SELECT
    cid,
    session_count
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count)
