SELECT
IF
  (prefecture IN ("東京",
      "埼玉",
      "千葉",
      "神奈川"),
    "一都三県",
    "一都三県以外") AS pref_category,
  AVG(datetime_diff("2019-12-31",
      birthday,
      YEAR)) AS ave_age,
  stddev_pop(datetime_diff("2019-12-31",
      birthday,
      YEAR)) AS stddev_age
FROM
  sample.customers
GROUP BY
  pref_category
