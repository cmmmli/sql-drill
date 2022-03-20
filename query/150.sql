SELECT
  CASE
    WHEN prefecture = "東京" THEN "東京"
    WHEN prefecture IN ("千葉",
    "埼玉",
    "神奈川") THEN "南関東"
    WHEN prefecture IN ("栃木", "群馬", "茨城") THEN "北関東"
  ELSE
  "その他"
END
  AS region,
  ROUND(AVG(datetime_diff("2019-12-31",
        birthday,
        YEAR)), 1) AS avg_age
FROM
  sample.customers
WHERE
  prefecture IN ("東京",
    "千葉",
    "埼玉",
    "神奈川",
    "栃木",
    "群馬",
    "茨城")
GROUP BY
  region
ORDER BY
  avg_age
