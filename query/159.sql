WITH
  master AS (
  SELECT
    DATE_DIFF("2019-12-31", birthday, YEAR) AS age
  FROM
    sample.customers )
SELECT
  ROUND(AVG(age), 1) AS avg_age
FROM
  master
