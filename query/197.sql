WITH v1 AS (
  SELECT
    concat(cid, session_count) AS session_id,
    MAX(IF (PAGE = "/special/diet/", 1, 0)) AS diet_page_session,
    SUM(IF (PAGE = "/thank_you/", 1, 0)) AS cv
  FROM
    sample.web_log
  GROUP BY
    session_id
)
SELECT
  diet_page_session = 1 AS view_diet_page_session,
  SUM(cv) / count(DISTINCT session_id) AS cvr
FROM
  v1
GROUP BY
  diet_page_session
