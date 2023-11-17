DECLARE
  v_employee_id employees.employee_id%type;
  jobs_number  INTEGER;
  data_is_null EXCEPTION;
BEGIN
  v_employee_id := &employee_id;
  jobs_number   := employees_pkg.get_jobs_number(v_employee_id);
  dbms_output.put_line('L''employ� '||v_employee_id||' a occup� '||jobs_number||' emploi(s).');
EXCEPTION
WHEN OTHERS THEN
  dbms_output.put_line('Erreur : '||sqlerrm);
END;