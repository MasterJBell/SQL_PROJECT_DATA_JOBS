CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);


INSERT INTO job_applied
            (job_id,
            application_sent_date,
            custom_resume,
            resume_file_name,
            cover_letter_sent,
            cover_letter_file_name,
            status)
VALUES  (1,
        '2026-02-02',
        true,
        'resume_01.pdf',
        true,
        'cover_letter_01.pdf',
        'submitted'),
        (2,
        '2026-01-02',
        true,
        'resume_02.pdf',
        true,
        'cover_letter_02.pdf',
        'submitted'
        ),
        (3,
        '2026-02-01',
        true,
        'resume_03.pdf',
        true,
        'cover_letter_03.pdf',
        'submitted'
        ),
        (4,
        '2025-02-02',
        true,
        'resume_04.pdf',
        false,
        NULL,
        'submitted'
        ),
        (5,
        '2025-10-02',
        true,
        'resume_05.pdf',
        true,
        'cover_letter_05.pdf',
        'rejected'
        );


ALTER TABLE job_applied
ADD contact VARCHAR(50);

UPDATE job_applied
SET    contact = 'Erlich Bachman'
WHERE  job_id = 1;

UPDATE job_applied
SET    contact = 'Dinesh Chugtai'
WHERE  job_id = 2;

UPDATE job_applied
SET    contact = 'Bertram Gilfoyle'
WHERE  job_id = 3;

UPDATE job_applied
SET    contact = 'Jian Yang'
WHERE  job_id = 4;

UPDATE job_applied
SET    contact = 'Big Head'
WHERE  job_id = 5;


ALTER TABLE job_applied
RENAME COLUMN contact to contact_name;


ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name;

DROP TABLE job_applied;

SELECT *
FROM job_applied;
