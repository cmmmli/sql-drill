WITH ses AS (
  SELECT
    FORMAT_DATETIME("%Y-%m", date_time) AS year_month
    , COUNT(DISTINCT CONCAT(cid, session_count)) AS session
  FROM
    sample.web_log
  GROUP BY
    year_month
)
, cvs AS (
  SELECT
    year_month
    , SUM(cv) AS sum_cv
  FROM
    (
      SELECT
        FORMAT_DATETIME("%Y-%m", date_time) AS year_month
        , CONCAT(cid, session_count) AS session
        , MAX(IF(page = "/thank_you/", 1, 0)) AS cv
      FROM
        sample.web_log
      GROUP BY
        year_month
        , session
    )
  GROUP BY
    year_month
)
SELECT
  CORR(session, sum_cv) AS correlation
FROM
  ses
  LEFT JOIN cvs
  USING
    (year_month)
