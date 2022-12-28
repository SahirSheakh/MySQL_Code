/*Creating procedure*/
  
 drop procedure if exists select_employees;
   
 Delimiter $$
  
 create procedure select_employees()
 Begin 
		Select * from employees 
        order by first_name asc
        limit 1000
        ;
End$$
Delimiter ;

 Call select_employees();
 
 
 /*Create PROCEDURE for employee average salary*/
 
 
 drop procedure if exists avg_salary;
 
 Delimiter $$
 Create procedure avg_salary()
 Begin
	select avg(salary) as Average_Employee_Salary
    from salaries;
End $$
Delimiter ;
 
 
 
 
 /* Store Procedure for employee average salary with output*/
 
 
 
 Drop procedure if exists emp_avg_salary_out;
  Delimiter $$
  Create procedure emp_avg_salary_out(in p_emp_no Integer, out p_avg_salary Decimal(10,2))
 Begin
 
select 
avg(s.salary)
Into p_avg_salary From
employees e
Join
Salaries s on e.emp_no = s.emp_no
where
e.emp_no = p_emp_no;
 
 End $$
Delimiter ;

