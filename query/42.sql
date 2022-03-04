SELECT
  user_id
FROM
  sample.sales
WHERE
  MOD(order_id, 3) = 0
  AND MOD(order_id, 7) = 0
ORDER BY
  user_id
LIMIT
  1
