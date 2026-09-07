  -- CTEs
  -- Allow to define a subquery block that you can refereance within the main query
  WITH CTE_Example AS
  (
  SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
  FROM employee_demographics dem
  JOIN employee_salary sal
  ON dem.employee_id = sal.employee_id
  GROUP BY gender
  )
  SELECT AVG(avg_sal)
  FROM CTE_Example
  ;
  
WITH CTE_Example1 AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example1
JOIN CTE_Example2
	ON CTE_Example1.employee_id = CTE_Example2.employee_id