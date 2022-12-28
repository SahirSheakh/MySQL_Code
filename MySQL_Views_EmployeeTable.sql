/*Creating VIEWS*/
 
Create view v_AvgManagerSalary as
 SELECT 
    t.emp_no, avg(s.salary) as Average_Manager_Salary
FROM
	salaries s
        JOIN
    titles t ON t.emp_no = s.emp_no
    where 
    t.title like "%manager%"
    ;
 
 select * from titles
 where title like "%manager%";