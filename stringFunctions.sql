-- String functions
-- Built in finctions within mysql that help work n use stings differently

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

-- upper
SELECT UPPER('sky'); 
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- TRIM ie LEFT TRIM, RIGHT TRIM 
-- Take white space on either left or right or both and get rid of it

SELECT TRIM('   sky    ');

-- SUBSTRING

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date, 6,2) AS birth_month
FROM employee_demographics
;

-- replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- locate
SELECT LOCATE('u','Wanjau');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics
;

-- concat
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name)  AS full_name
FROM employee_demographics
;



