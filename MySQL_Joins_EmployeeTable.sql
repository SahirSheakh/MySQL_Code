/* INNER JOIN */

SELECT 
    dept_manager_dup.dept_no,
    dept_manager_dup.emp_no,
    department_dup.dept_name
FROM
    dept_manager_dup 
        INNER JOIN
    department_dup ON department_dup.dept_no = dept_manager_dup.dept_no;


SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    d.dept_no
    
FROM
    employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no
ORDER BY emp_no; 

select * from dept_manager;

/* LEFT JOIN*/

SELECT 
    d.dept_no, e.emp_no, e.first_name, e.last_name, d.from_date
FROM
    employees e
        Left JOIN
    dept_manager d ON e.emp_no = d.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY d.dept_no DESC, e.emp_no; 


/* CROSS JOIN */

SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_no;


/*MULTIPLE JOINS*/

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    t.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
        JOIN
    dept_emp de ON e.emp_no = de.dept_no
        JOIN
    departments d ON de.dept_no = d.dept_name
WHERE
    t.title = 'Manager'
ORDER BY emp_no;


