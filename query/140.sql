WITH
  master AS (
  SELECT
    user_id,
    CASE
      WHEN prefecture IN ("東京", "埼玉", "千葉", "神奈川") THEN "東京圏"
      WHEN prefecture IN ("大阪",
      "京都",
      "奈良",
      "兵庫") THEN "大阪圏"
  END
    AS area
  FROM
    sample.customers )
SELECT
  area,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  master
USING
  (user_id)
WHERE
  area IS NOT NULL
GROUP BY
  area
