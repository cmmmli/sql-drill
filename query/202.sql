WITH objects AS (
  SELECT
    2017 AS year,
    800000 AS target
  UNION
  ALL
  SELECT
    2018,
    1000000
  UNION
  ALL
  SELECT
    2019,
    1200000
),
results AS (
  SELECT
    extract(
      YEAR
      FROM
        date_time
    ) AS year,
    sum(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    year
)
SELECT
  year,
  target,
  sum_rev AS result_rev,
  sum_rev / target AS archivement_rate
FROM
  results
  INNER JOIN objects USING (year)
ORDER BY
  year
