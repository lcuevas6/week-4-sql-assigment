DELIMITER //

CREATE PROCEDURE GetCompanyGenderCount(
IN gender_type ENUM ('M','F'),
OUT total INTEGER
)
BEGIN
SELECT count(*)
INTO total
FROM employees
WHERE gender = gender_type;
END//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GetCompanySalaryStatus(
OUT avgsalary INTEGER,
INOUT salaryStatus VARCHAR (40)
)
BEGIN

SELECT avg(salary)
INTO avgsalary
FROM salaries;
IF avgsalary > 50000 THEN
SET salaryStatus = 'High Paying Company';
ELSE 
SET salaryStatus = 'Low Paying Company';
END IF;
END//

DELIMITER ;


