WITH v1 AS (
  SELECT
    order_id,
    (revenue - (quantity * cost)) AS profit
  FROM
    sample.sales
    INNER JOIN sample.products USING (product_id)
)
SELECT
  order_id,
  sum(profit) AS profit_by_order
FROM
  v1
GROUP BY
  order_id
ORDER BY
  profit_by_order DESC
LIMIT
  1
