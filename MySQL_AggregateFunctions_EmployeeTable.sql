 /*Using COUNT, SUM, MIN, MAX, ROUND functions */
 
 
    SELECT 
    COUNT( distinct dept_no)
FROM
    dept_emp;
    
    SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
    SELECT 
    MIN(emp_no)
FROM
    employees;
    
    SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date = '1997-01-01'; 
    
    
/*Using COALESCE */
    
    SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    department_dup
ORDER BY dept_no ASC;  
    