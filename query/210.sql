WITH
  first_visits AS (
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
  cvs AS (
  SELECT
    cid,
    MIN(date_time) AS min_cv_date_time
  FROM
    sample.web_log
  WHERE
    page = "/thank_you/"
  GROUP BY
    cid )
SELECT
  cid,
  min_date_time AS first_visit_day,
  min_cv_date_time AS first_cv_day,
  datetime_diff(min_cv_date_time,
    min_date_time,
    DAY) AS cv_leadtime_days
FROM
  first_visits
JOIN
  cvs
USING
  (cid)
ORDER BY
  min_cv_date_time DESC
LIMIT
  1
