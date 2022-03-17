SELECT
  datetime_diff("2019-12-31",
    MAX(c.birthday),
    YEAR) AS age,
  SUM(revenue) AS sum_rev
FROM
  sample.sales AS s
INNER JOIN
  sample.customers AS c
USING
  (user_id)
WHERE
  c.gender = 1
GROUP BY
  s.user_id
ORDER BY
  sum_rev DESC
LIMIT
  1
