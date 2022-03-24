SELECT
  COUNT(*) AS users
FROM
  (
    SELECT
      user_id
    FROM
      sample.sales
    GROUP BY
      user_id
    HAVING
      SUM(
        IF (is_proper IS TRUE, 1, 0)
      ) = 0
  )
