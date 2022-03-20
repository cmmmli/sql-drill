WITH MASTER AS (
  SELECT
    sales.*,
    prefecture
  FROM
    sample.sales
    INNER JOIN sample.customers USING (user_id)
),
master17 AS (
  SELECT
    prefecture
  FROM
    MASTER
  WHERE
    EXTRACT(
      YEAR
      FROM
        date_time
    ) = 2017
  GROUP BY
    prefecture
  HAVING
    SUM(revenue) / COUNT(DISTINCT order_id) <= 2000
),
MASTER18 AS(
  SELECT
    prefecture
  FROM
    MASTER
  WHERE
    EXTRACT(
      YEAR
      FROM
        date_time
    ) = 2018
  GROUP BY
    prefecture
  HAVING
    SUM(revenue) / COUNT(DISTINCT order_id) >= 6000
),
MASTER19 AS(
  SELECT
    prefecture
  FROM
    MASTER
  WHERE
    EXTRACT(
      YEAR
      FROM
        date_time
    ) = 2019
  GROUP BY
    prefecture
  HAVING
    SUM(revenue) / COUNT(DISTINCT order_id) >= 6000
)
SELECT
  prefecture
FROM
  master17
INTERSECT
DISTINCT
SELECT
  prefecture
FROM
  master18
INTERSECT
DISTINCT
SELECT
  prefecture
FROM
  master19
