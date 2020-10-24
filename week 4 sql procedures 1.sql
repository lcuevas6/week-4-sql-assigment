DELIMITER //

CREATE PROCEDURE GetCountByBirthDate(
IN birthDate DATE
)
BEGIN
SELECT count(*) AS count
FROM employees
WHERE birth_date = birthDate;
END//

DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetCountByTitle(
IN title_name VARCHAR(50),
OUT total INTEGER
)
BEGIN
SELECT count(*) 
INTO total
FROM titles
WHERE title = title_name;
END // 

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GetCompanyAgeDemo(
IN birthDate DATE,
OUT total INTEGER,
INOUT ageDemo VARCHAR (20)
)
BEGIN
SELECT count(*)
INTO total
FROM employees
WHERE birth_date > 1989-01-01;
IF total > 10000 THEN
SET ageDemo = 'younger';
ELSE 
SET ageDemo = 'older';
END IF;
END//

DELIMITER ;





