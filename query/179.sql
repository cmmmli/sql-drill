SELECT
  sum(cv) AS cv,
  count(*) AS session_count,
  round(sum(cv) / count(*), 4) AS cvr
FROM
  (
    SELECT
      cid,
      session_count,
      max(IF(PAGE = "/thank_you/", 1, 0)) AS cv
    FROM
      sample.web_log
    GROUP BY
      cid,
      session_count
  )
