WITH v1 AS (
  SELECT
    cid,
    session_count,
    max(IF(PAGE = "/thank_you/", 1, 0)) AS cv
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count
),
v2 AS (
  SELECT
    cid,
    sum(cv) AS cv_count
  FROM
    v1
  GROUP BY
    cid
)
SELECT
  cv_count,
  count(DISTINCT cid) AS users
FROM
  v2
GROUP BY
  cv_count
ORDER BY
  cv_count DESC
