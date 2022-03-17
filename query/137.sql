WITH
  master AS (
  SELECT
    user_id
  FROM
    sample.sales
  WHERE
    format_datetime("%Y",
      date_time) = "2019" )
SELECT
  user_id
FROM
  sample.sales
GROUP BY
  user_id EXCEPT DISTINCT
SELECT
  *
FROM
  master
ORDER BY
  user_id
LIMIT
  10
