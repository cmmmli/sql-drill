SELECT
  SUM(quantity) AS sum_qty
FROM
  sample.customers
INNER JOIN
  sample.sales
USING
  (user_id)
WHERE
  gender = 2
