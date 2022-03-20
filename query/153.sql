WITH MASTER AS (
  SELECT
    user_id,
    COUNT(*) AS year_count
  FROM
    (
      SELECT
        user_id,
        format_datetime("%Y", date_time) AS year
      FROM
        sample.sales
      WHERE
        format_datetime("%Y", date_time) IN ("2017", "2018", "2019")
      GROUP BY
        user_id,
        year
    )
  GROUP BY
    user_id
  HAVING
    year_count >= 3
)
SELECT
  name
FROM
  MASTER
  LEFT JOIN sample.customers USING (user_id)
ORDER BY
  birthday DESC
LIMIT
  3
