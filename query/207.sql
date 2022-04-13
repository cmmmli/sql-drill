WITH
  v1 AS (
  SELECT
    cid,
    MIN(date_time) AS min_date_time,
    MIN(session_count) AS min_session_count
  FROM
    sample.web_log
  GROUP BY
    cid
  HAVING
    min_session_count = 1 ),
  v2 AS (
  SELECT
    cid,
    MIN(date_time) AS min_date_time
  FROM
    sample.web_log
  WHERE
    page = "/thank_you/"
  GROUP BY
    cid )
SELECT
  ROUND(AVG(datetime_diff(v2.min_date_time,
        v1.min_date_time,
        DAY)), 0) AS avg_cv_leadtime_day
FROM
  v1
JOIN
  v2
USING
  (cid)
