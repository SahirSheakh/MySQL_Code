
/* Create funtion for employee information*/


 DELIMITER $$
Drop function if exists emp_info;

CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)

DETERMINISTIC NO SQL READS SQL DATA

BEGIN



                DECLARE v_max_from_date date;



    DECLARE v_salary decimal(10,2);



SELECT

    MAX(from_date)

INTO v_max_from_date FROM

    employees e

        JOIN

    salaries s ON e.emp_no = s.emp_no

WHERE

    e.first_name = p_first_name

        AND e.last_name = p_last_name;



SELECT

    s.salary

INTO v_salary FROM

    employees e

        JOIN

    salaries s ON e.emp_no = s.emp_no

WHERE

    e.first_name = p_first_name

        AND e.last_name = p_last_name

        AND s.from_date = v_max_from_date;

       

                RETURN v_salary;



END$$



DELIMITER ;



SELECT EMP_INFO('Aruna', 'Journel');DELIMITER $$

/* Average Salary Function    Using SQL Local Varialble */

Drop function if exists f_emp_avg_salary;

Delimiter $$

Create function f_emp_avg_salary (p_emp_no integer) returns decimal (10,2)
Deterministic no sql reads sql data
begin
Declare v_avg_salary decimal(10,2);
SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;

return v_avg_salary;
end $$
delimiter ;