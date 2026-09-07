SELECT *
FROM employee_demographics
;


SELECT *
FROM employee_salary
;

-- INNER JOINS

SELECT ed.employee_id,ed.first_name, ed.age, es.occupation
FROM employee_demographics ed
INNER JOIN employee_salary es
ON ed.employee_id = es.employee_id
;

-- OUTER JOINS
SELECT *
FROM employee_demographics ed
RIGHT JOIN employee_salary es
ON ed.employee_id = es.employee_id
;

-- SELF JOINS
SELECT em1.employee_id AS em_santa, em1.first_name AS first_name_santa, em1.last_name AS last_name_santa,
em2.employee_id AS em_emp, em2.first_name AS first_name_emp, em2.last_name AS last_name_emp  
FROM employee_salary em1
JOIN employee_salary em2
	ON em1.employee_id +1 = em2.employee_id
;

-- JOINING MULTIPLE TABLES
SELECT ed.first_name, es.occupation,pd.department_name
FROM employee_demographics ed
INNER JOIN employee_salary es
ON ed.employee_id = es.employee_id
JOIN parks_departments pd
ON es.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;