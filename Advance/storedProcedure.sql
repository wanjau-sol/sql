-- STORED PROCEDURES
-- WAY TO STORE SQL CODE TO REUSE OVER N OVER
-- useful for storing complex queries, simplifying repetitve code n enhance perfoemance overall

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries1()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;   

CALL large_salaries1();

-- parameters:  varibales passed as input into a stored procedure

DELIMITER $$
CREATE PROCEDURE large_salaries2(employee_id INT)
BEGIN
	SELECT *
	FROM employee_salary
    WHERE employee_id = employee_id;
END $$
DELIMITER ; 

CALL large_salaries2(1);