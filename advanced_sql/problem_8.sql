/*
Find job postings from the fist quarter that have a salary greater than $70k
    - Combine job posting table from the first quater of 2023 (Jan-Mar)
    - Get job postings with an average yearly salary > $70,000
*/

SELECT
    job_title_short,
    job_location,
    job_via,
    job_posted_date::DATE,
    salary_year_avg
FROM (
    SELECT *
    FROM january_jobs
    UNION ALL -- Merges Jan and Feb all columns and removes duplicates
    SELECT *
    FROM february_jobs
    UNION ALL  -- Merges Mar with Jan and Feb all columns and removes duplicates
    SELECT *
    FROM march_jobs
) AS quarter1_job_postings
WHERE
    salary_year_avg > 70000 AND
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC
