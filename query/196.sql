WITH v1 AS (
  SELECT
    user_id,
    min(IF(product_id = 2, date_time, NULL)) AS min_prod_2_time,
    min(IF(product_id = 15, date_time, NULL)) AS min_prod_15_time,
    max(IF(product_id = 2, date_time, NULL)) AS max_prod_2_time,
    max(IF(product_id = 15, date_time, NULL)) AS max_prod_15_time,
  FROM
    sample.sales
  WHERE
    product_id IN (2, 15)
  GROUP BY
    user_id
)
SELECT
  user_id
FROM
  v1
WHERE
  --  ここのロジックはレコードの内容に依存していそう
  min_prod_2_time < min_prod_15_time
  AND date_trunc(min_prod_2_time, year) = date_trunc(min_prod_15_time, year)
  OR max_prod_2_time < max_prod_15_time
  AND date_trunc(max_prod_2_time, year) = date_trunc(max_prod_15_time, year)
ORDER BY
  user_id
