WITH
  master AS (
  SELECT
    cid,
    MAX(user_id) AS user_id
  FROM
    sample.web_log
  GROUP BY
    cid )
SELECT
  master.user_id,
  COUNT(*) AS pageviews
FROM
  sample.web_log AS web_log
INNER JOIN
  master
USING
  (cid)
GROUP BY
  master.user_id
HAVING
  user_id IS NOT NULL
ORDER BY
  pageviews DESC
LIMIT
  3
