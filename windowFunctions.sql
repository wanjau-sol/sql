-- window functions
-- like group by but each keep their unique rows in the ouput

SELECT gender, AVG(salary) AS Avg_Salary
FROM employee_demographics dm
JOIN employee_salary sal
ON dm.employee_id = sal.employee_id
GROUP BY gender; 

-- Rolling Total
SELECT dm.first_name, dm.last_name, gender,salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dm.employee_id) AS Rolling_Total
FROM employee_demographics dm
JOIN employee_salary sal
ON dm.employee_id = sal.employee_id
; 

-- ROW_NUMBER()
SELECT dm.employee_id, dm.first_name, dm.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_numbers
FROM employee_demographics dm
JOIN employee_salary sal
ON dm.employee_id = sal.employee_id
;

-- RANK
SELECT dm.employee_id, dm.first_name, dm.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_numbers,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dm
JOIN employee_salary sal
ON dm.employee_id = sal.employee_id
;

