WITH v1 AS (
  SELECT
    cid,
    session_count,
    min(date_time) AS min_date_time
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count
)
SELECT
  wl.page AS landing_page,
  count(*) AS sessions
FROM
  sample.web_log AS wl
  JOIN v1 ON wl.cid = v1.cid
  AND wl.session_count = v1.session_count
  AND wl.date_time = v1.min_date_time
GROUP BY
  landing_page
ORDER BY
  sessions DESC
LIMIT
  3
