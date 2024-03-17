/*
-- CREATE TABLE ACCOUNT
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email	 VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_logon TIMESTAMP
)


-- CREATE JOB TABLE
CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)


-- CREATE ACCOUNT_JOB TABLE
CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_iD  INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)
*/

-- INSERT THE DATA INTO TABLES
-- INSERT INTO account(username,password,email,created_on)
-- VALUES
-- ('ShahabajSk','password','shahabaj@mail.com',CURRENT_TIMESTAMP)
-- SELECT * FROM account

-- INSERT INTO job(job_name)
-- VALUES
-- ('Astronaut'),
-- ('President')
-- SELECT * FROM job

-- INSERT INTO account_job
-- VALUES
-- (1,1,CURRENT_TIMESTAMP),
-- (1,2,CURRENT_TIMESTAMP)
-- SELECT * FROM account_job

-- ** UPDATE COMMAND **
-- UPDATE account SET last_logon = created_on WHERE last_logon IS NULL RETURNING *;
-- SELECT * FROM account_job

-- UPDATE account_job
-- SET hire_date = account.created_on
-- FROM account
-- WHERE account_job.user_id = account_job.user_id;

