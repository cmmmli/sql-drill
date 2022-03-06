SELECT
  page,
  REGEXP_REPLACE(page, r"\?.+$", "") AS page_without_params
FROM
  sample.web_log
WHERE
  contains_SUBSTR(page,
    "?")
ORDER BY
  date_time
LIMIT
  3
