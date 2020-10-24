SELECT * FROM employees;

CALL GetCountByBirthDate('2020-01-01');
CALL GetCountByTitle('Staff', @total);
SELECT @total;

CALL GetCompanyAgeDemo('1989-01-01', @total, @age_demo);
SELECT @total;
SELECT @age_demo;

CALL GetCompanyGenderCount('M', @total_gender_count);
SELECT @total_gender_count;

CALL GetCompanySalaryStatus(@avgsalary, @salarystatus);
SELECT @avgsalary;
SELECT @salarystatus;
