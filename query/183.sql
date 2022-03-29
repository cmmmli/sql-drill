WITH
  v1 AS (
  SELECT
    COUNT(*) AS pageviews
  FROM
    sample.web_log ),
  v2 AS (
  SELECT
    cid,
    session_count
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count )
SELECT
  ROUND((
    SELECT
      pageviews
    FROM
      v1) / COUNT(*), 1) AS pv_per_session
FROM
  v2
