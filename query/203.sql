WITH v1 AS (
  SELECT
    format_datetime("%Y-%Q", date_time) AS quarter,
    sum(revenue) AS sum_rev
  FROM
    sample.sales
  WHERE
    EXTRACT(
      YEAR
      FROM
        date_time
    ) = 2017
  GROUP BY
    quarter
)
SELECT
  m1.quarter AS quarter,
  max(m1.sum_rev) AS sum_rev,
  sum(m2.sum_rev) AS accume_sum_rev
FROM
  v1 AS m1
  INNER JOIN v1 AS m2 ON m1.quarter >= m2.quarter
GROUP BY
  quarter
ORDER BY
  m1.quarter
