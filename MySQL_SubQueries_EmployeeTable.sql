/*Using SUBQUERIES*/

SELECT 
   e.emp_no, e.first_name, e.last_name, e.hire_date
FROM
    employees e
WHERE
    e.hire_date BETWEEN '1990-01-01' AND '1995-01-01'
        AND e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);