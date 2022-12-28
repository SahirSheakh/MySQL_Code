/*using the employee table*/
 
 USE employees; 
  
  /*Using Insert Statement*/
  
Insert into department_dup values ('d010', 'Public Relation');

 /*UPDATE statement for department duplicate table*/
 SELECT 
    *
FROM
    department_dup;
 
 
 UPDATE department_dup 
SET 
    dept_no = 'd003',
    dept_name = 'Orange'
WHERE
    dept_no = 'd002';
    
/*Change column name*/
    
    ALTER TABLE department_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;


/*Delete Statement*/
    
    DELETE FROM department_dup 
WHERE
    dept_no = 'd009';
    
    
/*Rollback command*/
    SELECT 
    *
FROM
    department_dup;
    rollback;