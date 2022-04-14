WITH
  v2018 AS (
  SELECT
    FORMAT_DATETIME("%B",
      date_time) AS month,
    SUM(revenue) AS sum_rev_2018
  FROM
    sample.sales
  WHERE
    EXTRACT(YEAR
    FROM
      date_time) = 2018
  GROUP BY
    month ),
  v2017 AS (
  SELECT
    FORMAT_DATETIME("%B",
      date_time) AS month,
    SUM(revenue) AS sum_rev_2017
  FROM
    sample.sales
  WHERE
    EXTRACT(YEAR
    FROM
      date_time) = 2017
  GROUP BY
    month )
SELECT
  month,
  sum_rev_2017,
  sum_rev_2018,
  ROUND(sum_rev_2018 / sum_rev_2017, 2) AS change
FROM
  v2017
JOIN
  v2018
USING
  (month)
ORDER BY
  change DESC
LIMIT
  3
