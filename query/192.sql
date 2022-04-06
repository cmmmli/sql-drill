WITH MASTER AS (
  SELECT
    DATETIME_DIFF(
      MAX(date_time),
      MIN(date_time),
      SECOND
    ) AS duration
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count
)
SELECT
  ROUND(SUM(duration) / COUNT(*), 1) AS avg_session_duration
FROM
  MASTER
