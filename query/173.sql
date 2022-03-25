SELECT
  prefecture,
  SUM(revenue) AS sum_rev,
  SUM(revenue) / (
    SELECT
      SUM(revenue)
    FROM
      sample.sales
  ) AS precent_sum_rev,
FROM
  sample.sales
  INNER JOIN sample.customers USING (user_id)
GROUP BY
  prefecture
ORDER BY
  sum_rev DESC
LIMIT
  3
