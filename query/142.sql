WITH
  master AS (
  SELECT
    user_id,
    gender,
    is_premium
  FROM
    sample.customers
  WHERE
    prefecture = "東京" )
SELECT
  gender,
  is_premium,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  master
USING
  (user_id)
GROUP BY
  gender,
  is_premium
ORDER BY
  gender,
  is_premium DESC
