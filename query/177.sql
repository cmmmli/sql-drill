SELECT
  user_id,
  count(*) AS cv_by_user
FROM
  (
    SELECT
      user_id,
    FROM
      sample.web_log
    WHERE
      PAGE = "/thank_you/"
    GROUP BY
      user_id,
      cid,
      session_count
  )
WHERE
  user_id IS NOT NULL
GROUP BY
  user_id
HAVING
  cv_by_user >= 2
ORDER BY
  user_id
