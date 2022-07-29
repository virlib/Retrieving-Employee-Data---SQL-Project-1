
-- Select data of all the employees --
SELECT * FROM EMPLOYEES;

-- Retrieve all employees whose address is in Elgin,IL --
SELECT * FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL%';

-- Retrieve all employees who were born during the 1970's --
SELECT * FROM EMPLOYEES WHERE B_DATE BETWEEN '19700101' AND '19791231';

-- Retrieve all employees in department 5 whose salary is between 60000 and 70000 --
SELECT * FROM EMPLOYEES WHERE B_DATE LIKE '%1970%';

-- Retrieve a list of employees ordered by department ID --
SELECT * FROM EMPLOYEES WHERE DEP_ID = 5 AND SALARY BETWEEN 50000 AND 60000; 

-- Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name --
SELECT * FROM EMPLOYEES ORDER BY DEP_ID;

-- For each department ID retrieve the number of employees in the department --
SELECT * FROM EMPLOYEES ORDER BY DEP_ID desc, L_NAME desc;

-- For each department retrieve the number of employees in the department, and the average employees salary in the department --
SELECT COUNT(EMP_ID),DEP_ID FROM EMPLOYEES GROUP BY DEP_ID ;

-- Label the computed columns in the above query as NUM_EMPLOYEES and AVG_SALARY --
SELECT COUNT(EMP_ID), AVG(SALARY), DEP_ID FROM EMPLOYEES GROUP BY DEP_ID ;

-- In above query order the result set by Average Salary --
SELECT COUNT(EMP_ID) AS num_employees, AVG(SALARY) as avg_salary, DEP_ID FROM EMPLOYEES GROUP BY DEP_ID ;

-- Limit the result in above query to departments with fewer than 4 employees --
SELECT COUNT(EMP_ID) AS num_employees, AVG(SALARY) as avg_salary, DEP_ID FROM EMPLOYEES GROUP BY DEP_ID ORDER BY AVG_SALARY;

-- 
SELECT COUNT(EMP_ID) AS num_employees, AVG(SALARY) as avg_salary, DEP_ID FROM EMPLOYEES GROUP BY DEP_ID HAVING DEP_ID<4 ORDER BY AVG_SALARY ;