SELECT
  user_id,
  name
FROM
  sample.customers
WHERE
  REGEXP_CONTAINS(name, r"^.*山\s") IS TRUE
  AND gender = 1
