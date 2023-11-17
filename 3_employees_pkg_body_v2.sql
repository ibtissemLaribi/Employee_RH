CREATE OR REPLACE
PACKAGE BODY EMPLOYEES_PKG
AS
FUNCTION get_jobs_number( p_employee_id employees.employee_id%type)  RETURN INTEGER
AS
 v_nombre INTEGER := 0;
 BEGIN
    SELECT COUNT(*)
    INTO v_nombre
    FROM job_history
    WHERE employee_id = p_employee_id;
    RETURN v_nombre;
END get_jobs_number;


PROCEDURE get_departments_by_sal(
    p_sal employees.salary%type,
    tableDepts OUT depts_tab_type)
AS
 cursor depts_cursor
 is
  SELECT * 
  FROM departments 
  where department_id IN (select department_id
                          from employees
                          where salary > p_sal);

BEGIN
  OPEN depts_cursor;
  fetch depts_cursor bulk collect into tableDepts ;
   close depts_cursor;
END get_departments_by_sal;
END EMPLOYEES_PKG;