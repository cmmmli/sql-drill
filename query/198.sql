WITH v1 AS (
  SELECT
    gender,
    SUM(revenue) AS sum_rev_female,
    product_id
  FROM
    sample.sales
    LEFT JOIN sample.customers USING (user_id)
  WHERE
    gender = 2
  GROUP BY
    product_id,
    gender
  ORDER BY
    sum_rev_female DESC
  LIMIT
    3
)
SELECT
  product_name,
  sum_rev_female,
  sum_rev_female / (
    SELECT
      sum(revenue)
    FROM
      sample.sales
  ) AS percent_rev_female
FROM
  v1
  LEFT JOIN sample.products USING (product_id)
