-- Temporary Tables
-- Only availbale to the session they have been created for
-- used ie store intemedieate results for complex queries, manipulate Data b4 inserting it into a more permanent table

CREATE TEMPORARY TABLE temp_table(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Kiraiku', 'Wanjau', 'Lord of Rings: The Two Towers');

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;