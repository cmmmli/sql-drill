SELECT
  user_id, name
FROM
  sample.customers
WHERE
  length(REGEXP_EXTRACT(name, r"(^.*)\s")) = 3
  and
  length(REGEXP_EXTRACT(name, r"\s(.*$)")) = 3
