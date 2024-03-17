ALTER TABLE employees
ADD COLUMN dept VARCHAR(15), 
ADD COLUMN salary FLOAT;

ALTER TABLE employees
--RENAME COLUMN id TO emp_id,
RENAME COLUMN name TO emp_Name;

SELECT * FROM employees;
truncate table employees;

-- insert 500 dummy records

INSERT INTO employees (emp_id, emp_name, dept, salary)
SELECT
	generate_series as emp_id,
	'emp_' || generate_series as emp_name,
	CASE
		WHEN generate_series % 4 = 0 THEN 'HR'
		WHEN generate_series % 4 = 1 THEN 'Admin'
		WHEN generate_series % 4 = 2 THEN 'Finance'
		WHEN generate_series % 4 = 3 THEN 'IT'
	END 
	AS dept,
	round(random()*100000) as Salary
	FROM generate_series(1,500);
	
ALTER TABLE employees DROP CONSTRAINT employees_pkey;
ALTER TABLE employees ADD CONSTRAINT emp_pk PRIMARY KEY (emp_id);

SELECT * FROM employees;

SELECT * FROM employees;

-- MAX SALARY
SELECT * FROM employees WHERE salary = (SELECT MAX(SALARY) FROM employees);

-- MAX SALARY DEPARTMENT WISE
SELECT DISTINCT(dept), MAX(salary) AS Max_Salary
FROM employees
GROUP BY dept
ORDER BY 2 DESC;


-- MAX SALARY WITH WINDOW FUNCTION WHEN WE NEED OTHER DETAILS OF COLUMNS AS WELL
SELECT e.*,
RANK() OVER(PARTITION BY dept) as rank_col
FROM employees e;

-- ROW_NUMBER, RANK, DENSE_RANK, LEAD AND LAG

SELECT e.*,
ROW_NUMBER() OVER (PARTITION BY dept) AS rn
FROM employees e;

-- GET FIRST TWO EMPL0YEE FROM EACH DEPARTMENT considering emp id

SELECT *
FROM (
	SELECT e.*,
	ROW_NUMBER() OVER (PARTITION BY dept ORDER BY emp_Id) AS rn
	FROM employees e
	) As rnk
	
WHERE rnk.rn < 3;

-- TOP 3 HIGHEST PAID EMPLOYEES FROM EACH DEPARMENT
SELECT * 
FROM (
	SELECT e.*,
	RANK() OVER(PARTITION BY dept ORDER BY salary DESC) as rnk
	FROM employees e
	) as sal_rank
WHERE sal_rank.rnk < 4;

-- DESSE RANK
SELECT e.*,
	RANK() OVER(PARTITION BY dept ORDER BY salary DESC) as rnk,
	DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) as d_rank
FROM employees e;

-- LAG AND LEAD


