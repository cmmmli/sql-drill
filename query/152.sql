WITH
  master AS (
  SELECT
    format_datetime("%Y",
      date_time) AS year,
    format_datetime("%Q",
      date_time) AS quarter,
    SUM(revenue) AS sum_rev,
  FROM
    sample.sales
  GROUP BY
    year,
    quarter
  HAVING
    year IN ("2018",
      "2019") )
SELECT
  quarter,
  growth_rate
FROM (
  SELECT
    quarter,
    sum_rev / LAG(sum_rev) OVER (PARTITION BY quarter ORDER BY year ) AS growth_rate
  FROM
    master)
WHERE
  growth_rate IS NOT NULL
ORDER BY
  quarter
